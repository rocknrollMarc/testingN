When(/^I modify the box title field to say "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^choose "(.*?)"$/) do |sicherheitsfrage|
  click_link sicherheitsfrage

end

When(/^I click "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should have a box with the title "(.*?)"$/) do |box_title|
  page.should have_content box_title
end

When(/^I add an item "(.*?)"$/) do |content|
  find("#content_details_tag").should have_text 'content'
end

Then(/^I should have a box with the title "(.*?)" that has "(.*?)" parts$/) do |title, parts|
  find("#headline").should have_text 'title'
end

When(/^I delete the first item in the contents$/) do
  click_on("#content_details_tagsinput > span:nth-of-type(1) > a")
end

When(/^I get rid of all box contents$/) do
  click_on("#tags1406804019978_tagsinput > span:first-child > a")
  click_on("#tags1406804019978_tagsinput > span:nth-of-type(2) > a")
end

When(/^I upload a photo$/) do
  click_button 'Bild Hochladen'
  attach_file('Image', "./Image_upload/image.jpg")
  click_button 'Choose File'
end

When(/^I select that photo as the default$/) do
  find("selectedimage(image_id")

  find("[name'boxForm'] > div:first-child > div:nth-of-type(3) > div > div:nth-of-type(2) > div > a:nth-of-type(2)").click
end

Then(/^I should have a box with the title "(.*?)" with my new photo$/) do |title|
  visit "https://www.sendandstore.de/home#/"
  find("#product-info").has_text?(title)
end

Then(/^I see that the box is in the cart$/) do
  find("#main-wrapper > section:nth-of-type(2) > div > div > div:nth-of-type(2) > div:nth-of-type(2) > div > ul > li > button")
end

Then(/^I remove the box from the cart$/) do
  click_button "Anfordern"
end

Then(/^I see an empty cart$/) do
end

Given(/^I am on "(.*?)"$/) do |page_name|
  case page_name
  when "Start page"
    visit "https://www.sendandstore.de"
  when "My depot"
    visit "https://www.sendandstore.de/home#/"
  when "AGB"
    visit "https://www.sendandstore.de/agb"
  when "Faq"
    visit "https://www.sendandstore.de/faq"
  when "impressum"
    visit "https://www.sendandstore.de/impressum"
  when "index"
    visit "https://sendandstore.de/"
  when "Packen"
    visit "https://www.sendandstore.de/howtopack"
  when "Price"
    visit "https://www.sendandstore.de/pricing"
  else
    visit "https://www.sendandstore.de"
  end
end

Given(/^I fill in "(.*?)" in the "(.*?)" field$/) do |value, field|
  fill_in field, with: value
end

Then(/^the "(.*?)" should be the exactly the number of tags I have entered$/) do |arg1|
  find("#main-wrapper > section:nth-of-type(2) > div > div > div:first-child > div > div > div:nth-of-type(1) > div > div:nth-of-type(2) > div:nth-of-type(2) > span").text should == 3
end

When(/^I click the  Facebook link$/) do
end

  

When(/^I click the  Twitter link$/) do
  pending # express the regexp above with the code you wish you had
end


Given(/^I am on the login page$/) do
  visit("http://www.sendandstore.de/home#")
end

When(/^have a valid "(.*?)" account$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a text field for entering my "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
Then(/^I should be brought to https:\/\/www\.sendandstore\.de\/faq$/) do
  visit("http://www.sendandstore.de/faq")
end

When(/^I click My Depot$/) do
  click_link("My Depot")
end

Then(/^I should be brought to https:\/\/www\.sendandstore\.de\/home$/) do
  page.should have_content("MY DEPOT - INVENTAR")
end

When(/^I click email$/) do
  click_link("eMail:")
end

When(/^I click Impressum$/) do
  click_link("Impressum")
end

Then(/^I should be brought to https:\/\/www\.sendandstore\.de\/impressum$/) do
  page.should have_content("IMPRESSUM")
end

Then(/^I should see the new address:$/) do |string|
  page.should have_content(string) 
end

Then(/^I should see the new <type> <data>:$/) do |table|
  page.should have_content(table)

end
