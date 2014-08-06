# These are helpers to log into the email recipient account and verify that an email arrives
Then(/^the user goes to gmail$/) do
  visit "https://mail.google.com"
end

Then(/^logs into the gmail catchall account$/) do
  fill_in 'Email', with: "ca@llemtesting.net"
  fill_in 'Passwd', with: "LL2014sendstore"
  find_by_id('signIn').click
end

Then(/^the user should be able to search for an email to him with the title "(.*?)"$/) do |arg1|
  the_search_text = "to:" + @user['email'] + " subject:" + arg1
  the_mail = page.driver.browser.find_element(:xpath, "//b[text()='Anmeldebestätigung']")
  the_mail.click
  page.should have_content 'Lothar von'
  #find(:css, "input[id$='donation_pledge_hundreds']")
  #//*[@id="gbqfq"]
  #find('link_enable_notifications_learn_more').click
  #page.should have_content 'Desktop notifications'
#  find(:xpath, "//*[@name='q']").set the_search_text
 # find(:xpath, "//*[@id='gbqfb']").click
  #page.should have_content arg1
  #page.should have_content @user['fname']
  #gbqfq
  #gbqfb
end

Then(/^the user verifies the activation email and opens the link$/) do
  pending # express the regexp above with the code you wish you had
end