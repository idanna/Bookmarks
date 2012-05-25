Given /^I navigated to registration path$/ do
  visit new_user_registration_path
end

Given /^I fill the registration form$/ do
  fill_in('user[email]', :with =>'a@b.c')
  fill_in('user[password]', :with =>'123456')
  fill_in('user[password_confirmation]', :with =>'123456')
  click_button 'Sign up'
end

Then /^I should have a new user in the database$/ do
    u = User.first
	  u.email.should == 'a@b.c'
end

Then /^I should be on the bookmark page$/ do
	  current_path.should == user_bookmarks_path
end


#signout

Given /^I am signed in$/ do
  email = 'a@b.c'
  password = '314159'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit root_path
  fill_in "user_email", :with=>email
  fill_in "user_password", :with=>password
  click_button "Sign in"
end

Given /^I press logout$/ do
  click_link 'Logout'
end

Then /^I should be on the welcome screen$/ do
  current_path.should == root_path
end

Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content(arg1)
end

