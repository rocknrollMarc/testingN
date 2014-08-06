# This is the email checking functionality
# It assumes that you are running the mailchecker gem locally and that the app is configured to send the emails. 
require 'httparty'
require 'json'

#Registration-basic step definitions
Given(/^that a user has all the correct information$/) do
  @user = Hash.new
  @user['email'] = 	"basic" + ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join + "@llemtesting.net"
  @user['password'] = 	"abc123"
  @user['anrede'] = 	"herr"
  @user['fname'] = 	"Lothar"
  @user['lname'] = 	"von " + ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
  @user['mobile'] = 	"+4212344567898"
  @user['answer'] =	"my answer"
end

Given(/^that a the "(.*?)" user exists$/) do |arg1|
  @user = Hash.new
  @user['password'] =   "abc123"
  case arg1
  when 'profile'
    @user['email'] =  "profileTestero@llemtesting.net"
    @user['anrede'] =   "herr"
    @user['fname'] =  "Profiler"
    @user['lname'] =  "von " + ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
    @user['mobile'] =   "+4212344567898"
    @user['answer'] = "my answer"
  when 'inventory'
    @user['email'] =  "inventoryTestero@llemtesting.net"
    @user['anrede'] =   "herr"
    @user['fname'] =  "Inventory"
    @user['lname'] =  "von " + ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
    @user['mobile'] =   "+4212344567898"
    @user['answer'] = "my answer"
  when 'sendSingle'
    @user['email'] =  "sendSingleTestero@llemtesting.net"
    @user['anrede'] =   "herr"
    @user['fname'] =  "Inventory"
    @user['lname'] =  "von MT2SJRBG" #+ ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
    @user['mobile'] =   "+4212344567898"
    @user['answer'] = "my answer"
  end
end

When(/^I visit the registration page with token "(.*?)"$/) do |arg1|
  the_url = "http://" + ENV['SITE_URL'] + ":3000/registration/" + arg1
  #print ENV['SITE_URL']
  #print the_url
  visit the_url
end

When(/^I fill in the registration form completely$/) do
  fill_in 'firstname', with: @user['fname']
  fill_in "lastname", with: @user['lname']
  fill_in "mobilephone", with: @user['mobile']
  fill_in "email", with: @user['email']
  fill_in "password", with: @user['password']
  fill_in "password-confirm", with: @user['password']
  #//*[@id="question"]   or   #question
  select "Was ist Ihr Lieblingsurlaubsziel?", :from => "question"
  #within 'select#question' do
    ##question > option:nth-child(3)
    #//*[@id="question"]/option[3]
  #  find(:css, "option[3]").click
  #end
  fill_in "answer", with: @user['answer']
  check "agb"
  click_button "Registrieren"
end

Then(/^I should be in the Inventory Dashboard$/) do
  page.should have_content("MY DEPOT - INVENTAR")
end


When(/^I fill in the first name field with "(.*?)"$/) do |arg1|
  if arg1 == ""
    fill_in 'firstname', with: @user['fname']
  else
    fill_in 'firstname', with: arg1
  end
end

When(/^I fill in the last name field with "(.*?)"$/) do |arg1|
  if arg1 == ""
    fill_in 'lastname', with: @user['lname']
  else
    fill_in 'lastname', with: arg1
  end
end

When(/^I fill in the mobile phone field with "(.*?)"$/) do |arg1|
  if arg1 == ""
    fill_in 'mobilephone', with: @user['mobile']
  else
    fill_in 'mobilephone', with: arg1
  end
end

When(/^I fill in the email field with "(.*?)"$/) do |arg1|
  print arg1
  if arg1.empty?
    fill_in 'email', with: @user['email']
  else
    fill_in 'email', with: arg1
  end
end

When(/^I fill in the password field with "(.*?)"$/) do |arg1|
  if arg1 == ""
    fill_in 'password', with: @user['password']
  else
    fill_in 'password', with: arg1
  end
end

When(/^I fill in the password confirmation field with "(.*?)"$/) do |arg1|
  if arg1 == ""
    fill_in 'password-confirm', with: @user['password']
  else
    fill_in 'password-confirm', with: arg1
  end
end

When(/^I select the "(.*?)" for the security question$/) do |arg1|
  select arg1, :from => "question"
end

When(/^I answer the security question with "(.*?)"$/) do |arg1|
  if arg1 == ""
    fill_in 'answer', with: @user['answer']
  else
    fill_in 'answer', with: arg1
  end
end

When(/^I check the AGBs$/) do
  check "agb"
end

When(/^I submit the registration form$/) do
  click_button "Registrieren"
end

Then(/^I should receive an error message "(.*?)"$/) do |arg1|
  page.should have_content arg1
end

Then(/^I click the Logout button$/) do
  click_button "Abmelden"
end

# ss-22 step
Then(/^I should see the new customer how\-to$/) do
  page.should have_content "Hallo"
end

# ss-66 step
When(/^A user visits "(.*?)" and is not logged in$/) do |arg1|
  the_url = "http://" + ENV['SITE_URL'] + ":3000/" + arg1
  visit the_url
end

Then(/^I expect to see the login screen$/) do
  #current_path.should == "/login"
  page.should have_content 'ANMELDEN'
end

# ss-196 step
Then(/^the security question for (\d+) should be a dropdown with the option "(.*?)"$/) do |arg1, arg2|
  #TO-DO: Implement a clean version of this!!
  page.should have_content arg2
end

# ss-192 step 
Then(/^the salutation field should be a dropdown with "(.*?)" and "(.*?)"$/) do |arg1, arg2|
  page.should have_content arg1
  page.should have_content arg2
end

# ss-253 step
When(/^I click on the user profile page$/) do
  click_link "Profil bearbeiten"
end

Then(/^my current address has the country "(.*?)" selected$/) do |arg1|
  page.should have_select('country', selected: arg1)
end

Then(/^my current language has the "(.*?)" selected$/) do |arg1|
  page.should have_select('language', selected: arg1)
end

# ss-251 step (currently looking for an element id)
Then(/^the "(.*?)" field exists$/) do |arg1|
  the_xpath_is = '//*[@id="' + arg1 + '"]'
  page.find(:xpath, the_xpath_is) 
end

Then(/^I should see the message "(.*?)"$/) do |arg1|
  page.should have_content arg1
end

Then(/^I should be at the path "(.*?)"$/) do |arg1|
  current_path.should == arg1
end

Then(/^the "(.*?)" field still has user array data "(.*?)"$/) do |arg1, arg2|
  find_field(arg1).value.should eq @user[arg2]
end

Then(/^the security question is set to "(.*?)"$/) do |arg1|
  find_field('question').find('option[selected]').text eq arg1
end

Then(/^the AGBs are still checked$/) do
  page.find(:xpath, '//*[@id="registration-form"]/fieldset[3]/div/div/label/input').should be_checked
end

When(/^I click away the popup window$/) do
  #//*[@id="errors-modal"]/div/div/div[1]/button
  #//*[@id="errors-modal"]/div/div/div[3]/button
  page.find(:xpath, '//*[@id="errors-modal"]/div/div/div[3]/button').click
end

When(/^I click away the newbie popup window$/) do
  # Only clear this if it exists
  #//*[@id="newbie-modal"]/div/div/div[3]/button
  if page.first(:xpath, '//*[@id="newbie-modal"]/div/div/div[3]/button')
    page.find(:xpath, '//*[@id="newbie-modal"]/div/div/div[3]/button').click
  end
end

Then(/^I click on the first box$/) do
  #Grabs the first box via XPath and clicks it
  page.find(:xpath, '//*[@id="shop-1"]/div/div/div[1]/div/div/div[1]/div/div[1]/h4/a').click
end

Then(/^I change the box name to "(.*?)"$/) do |arg1|
  fill_in 'headline', with: arg1
end

Then(/^I change the description to "(.*?)"$/) do |arg1|
  fill_in 'content_details', with: arg1
end

Then(/^I save the box changes$/) do
  click_button 'Speichern'
end

Then(/^I have a box called "(.*?)"$/) do |arg1|
  page.should have_content arg1
end

Then(/^There is a box called "(.*?)" with "(.*?)" parts$/) do |arg1, arg2|
  page.should have_content arg1
  parts_text = arg2 + " Teile"
  page.should have_content parts_text
end

Then(/^I should be on the user profile page$/) do
  #current_path.should == "/home#/profile"
  page.should have_content "MY DEPOT - PROFIL"
end

Then(/^I click on the documents page$/) do
  click_link "Dokumente einsehen"
end

Then(/^I should be on the user documents page$/) do
  #current_path.should == "/home#/documents"
  page.should have_content "MY DEPOT - DOKUMENTE"
end

Then(/^I should be at the newsletter registration page$/) do
  page.should have_content "NEWSLETTER ABONNIEREN"
end

Then(/^I should be at the normal registration page$/) do
  page.should have_content "REGISTRIERUNG"
end

# EMAIL FUNCTIONS
Then(/^I will find an email sent to the user with the title "(.*?)"$/) do |arg1|
  the_email_JSON = HTTParty.get('http://95.138.168.6:1080/messages')
  #print the_email_JSON
  the_emails = JSON.parse(the_email_JSON.body)
  recipients = the_emails[0]['recipients'][0]
  subject = the_emails[0]['subject']
  #print @user['email']
  recipients =  recipients.gsub!('<','_')
  recipients =  recipients.gsub!('>','_')
  recipients.to_s.should have_text @user['email']
  subject.should eq arg1
  #.should have_content @user['email']
end

Then(/^I will click on the registration link in the email$/) do
  the_email_JSON = HTTParty.get('http://localhost:1080/messages')
  #print the_email_JSON
  the_emails = JSON.parse(the_email_JSON.body)
  first_email_id = the_emails[0]['id']
  message_url = 'http://http://95.138.168.6:1080/messages/' + first_email_id.to_s + '.html'
  specific_email_HTML = HTTParty.get(message_url)
  print specific_email_HTML
  html_fragment = Capybara.string(specific_email_HTML)
  the_link = html_fragment.find(:link, "Aktivieren")
  #print the_link[:href]
  visit the_link[:href]
  #html_fragment.find(:xpath '//a[contains(@href,"activate")]').should have_text 'activate'
  #message_url = 'http://localhost:1080/messages/' + first_email_id.to_s + '.json'
  #specific_email_JSON = HTTParty.get(message_url)
  #this_one_email = JSON.parse(specific_email_JSON.body)
  #html_fragment = Capybara.string(this_one_email['source'])
  #print this_one_email['source']
  #print html_fragment.html
  #html_fragment.find("//a[contains(@href,'activate')]").click
end


When(/^I log in as a user$/) do
  the_url = "http://" + ENV['SITE_URL'] + ":3000/login"
  visit the_url
  fill_in "email", with: @user['email']
  fill_in "password", with: @user['password']
  click_button "Anmelden"
end

Then(/^I can change the "(.*?)" drop down to "(.*?)"$/) do |arg1, arg2|
  select arg2, :from => arg1
end

Then(/^I can save the changes$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can change the "(.*?)" input field to "(.*?)"$/) do |arg1, arg2|
  case arg2
  when '**RANDOM_EMAIL**'
    the_input_text = "replacement" + ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join + "@llemtesting.net"
  else
    the_input_text = arg2 
  end
  fill_in arg1, with: the_input_text
end

Then(/^I can uncheck the "(.*?)" checkbox$/) do |arg1|
  pending # have to sort out how to get these found and chacked
end

Then(/^I answer the security question correctly$/) do
  fill_in "answer", with: @user['answer']
end

Then(/^I save the changes$/) do
  click_button "Speichern"
end

# Send single box FUNCTIONS
When(/^I add the first box to be sent$/) do
  #puts "Looking for the button"
  boxes = page.all(".box_new")
  within boxes[0] do
    click_link "Einlagern"
  end
end

Then(/^I am on the checkout page$/) do
  # TODO make more robust
  page.should have_content "Zahlungsinformationen"
end

Then(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Then(/^I fill in "(.*?)"  with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Then(/^I click the button "(.*?)"$/) do |arg1|
  click_button arg1
end

### Admin steps
When(/^I visit the admin backend on port "(.*?)"$/) do |arg1|
  the_url = "http://" + ENV['SITE_URL'] + ":" + arg1
  visit the_url 
end

When(/^I fill in the "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Then(/^I am in the Admin Dashboard$/) do
  # TODO: make this more robust
  page.should have_content "ADMIN"
end

When(/^I click on the link "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I click on the plus symbol to add a storage facility$/) do
  # /html/body/div[3]/div[1]/div[4]/div[2]
  page.find(:xpath, "/html/body/div[3]/div[1]/div[4]/div[2]").click
end

When(/^I select "(.*?)" from the drop down menu "(.*?)"$/) do |arg1, arg2|
  select arg1, :from => arg2
end

When(/^I click the save symbol to save the storage facility$/) do
  # /html/body/div[5]/div[1]/div[4]/div[1]
  # /html/body/div[5]/div[1]/div[4]/div[1]
  # /html/body/div[5]/div[1]/div[4]/div[1]/i
  # /html/body/div[5]/div[1]/div[4]/div[1]
  # /html/body/div[5]/div[1]/div[4]/div[2]
  page.find(:xpath, "/html/body/div[3]/div[1]/div[4]/div[1]").click
end

Then(/^I see my storage facility "(.*?)" in the storage facility list$/) do |arg1|
  page.should have_content arg1
end

When(/^I modify the box title field to say "(.*?)"$/) do |arg1|
  fill_in "headline", with: arg1
end

When(/^I add an item "(.*?)"$/) do |arg1|
  the_string = arg1 + "\n"
  fill_in "content_details_tag", with: the_string
  #page.driver.browser.key_down(:enter).key_up(:enter).perform
end

When(/^I click "(.*?)"$/) do |arg1|
  #find(arg1).click
  click_button arg1
end

Then(/^I should have a box with the title "(.*?)" that has "(.*?)" parts$/) do |arg1, arg2|
  page.should have_content arg1
  check_string = arg2 + ' Teile'
  page.should have_content check_string
end

When(/^I log into the backend with "(.*?)" and "(.*?)"$/) do |arg1, arg2|
  # TODO: port needs to be dynamic, look at the profiles for which var
  the_url = "http://" + ENV['SITE_URL'] + ":3009/" 
  visit the_url 
  within ".form-group" do
    fill_in "email", with: arg1
    fill_in "password", with: arg2
  end
  click_button "Anmelden"
end

Then(/^I am on the backend main page$/) do
  page.should have_content "ADMIN"
end

When(/^I click on the "(.*?)" Link$/) do |arg1|
  click_link arg1
end

Then(/^I am on the backend boxes page$/) do
  page.should have_content "List of open Pickups"
end

Then(/^I should see the box from the user$/) do 
  page.should have_content @user['lname']
end

When(/^I click on the box from the user$/) do 
  # first find the row
  # CSS row list-group-item ng-scope
  the_row = find('.list-group-item', :text => @user['lname'])
  the_row_box_a = the_row.find(:xpath, "//a[contains(@href, '#/box')]")
  the_row_box_a.click
end

When(/^I click on the box settings button$/) do
  # ng-click=toggle('rightSidebar')
  the_button = find(:xpath, "//div[contains(@ng-click, 'rightSidebar')]")
  the_button.click
end

When(/^I click on the transport link$/) do
  within(:css, "div#rightSidebar") do
    all('a').each do |ea| 
      puts ea[:text] 
      if ea.has_content? "transport"
        puts "picked up"
        ea.click
      end
    end
    # Click the OK Button
    #find(:css, 'span.btn-primary')
    # ng-click = action('transport')
    #the_link = find("//a[contains(text(), 'transport')]")
    #the_link.click
    #click_link " transport"
  end
  the_confirmation_button = find(:xpath, "//span[contains(@ng-click, 'confirm')]")
  the_confirmation_button.click 
end

When(/^I click on the received link$/) do
  within(:css, "div#rightSidebar") do
    all('a').each do |ea| 
      puts ea[:text] 
      if ea.has_content? "reachedDestination"
        puts "Moving to warehouse"
        ea.click
      end
    end
    # Click the OK Button
    #find(:css, 'span.btn-primary')
    # ng-click = action('transport')
    #the_link = find("//a[contains(text(), 'transport')]")
    #the_link.click
    #click_link " transport"
  end
  the_confirmation_button = find(:xpath, "//span[contains(@ng-click, 'confirm')]")
  the_confirmation_button.click 
end

Then(/^the box "(.*?)" should have a status of "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should have a box with the title "(.*?)" that has a status of "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
