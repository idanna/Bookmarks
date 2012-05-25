Given /^I fill in bookmark link with "([^"]*)"$/ do |arg1|
    fill_in('user_bookmark[link]', :with => arg1)
end

Given /^I press submit$/ do
  click_button 'Create User bookmark'
end

Then /^I should have a new bookmark in my databse$/ do
  bm = UserBookmark.first
  bm.link.should == "www.youtube.com"
end

Then /^I should see "([^"]*)" on my bookmarks list$/ do |arg1|
  page.should have_content(arg1)
end

#step 4
Given /^I have a bookmark to "([^"]*)"$/ do |arg1|
  user = User.first
  user.user_bookmarks.new(:link => arg1).save!
	visit page.driver.browser.current_url
end

Given /^I press on the delete link$/ do
  click_link "Delete"
end

Then /^I should have not have "([^"]*)" in the database$/ do |arg1|
  bk = UserBookmark.first
  bk.nil?
end
