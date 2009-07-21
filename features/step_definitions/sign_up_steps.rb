# Database

Given /^I am signed up but unconfirmed as "(.*)\/(.*)"$/ do |email, pwd|
  #User.make(:email => 'email', :password => pwd, :password_confirmation => pwd)
end 

Given /^I am signed up as "(.*)\/(.*)"$/ do |email, pwd|
  #User.make(:email => 'email', :password => pwd, :password_confirmation => pwd).confirm!
end

# Session

Then /^I should be signed in$/ do
  controller.should be_signed_in
end

Then /^I should be signed out$/ do
  controller.should_not be_signed_in
end

When /^I try to change the password of "(.*)" without token$/ do |email|
  user = User.find_by_email(email)
  visit edit_user_password_path(:user_id => user)
end

Then /^I should be forbidden$/ do
  assert_response :forbidden
end

# Actions

When /^I sign in( with "remember me")? as "(.*)\/(.*)"$/ do |remember, email, password|
  When %{I go to the sign in page}
  And %{I fill in "Email" with "#{email}"}
  And %{I fill in "Password" with "#{password}"}
  And %{I check "Remember me"} if remember
  And %{I press "Sign In"}
end

When /^I sign out$/ do
  visit '/session', :delete
end

When /^I request a password reset link to be sent to "(.*)"$/ do |email|
  When %{I go to the password reset request page}
  And %{I fill in "Email address" with "#{email}"}
  And %{I press "Reset password"}
end

When /^I update my password with "(.*)\/(.*)"$/ do |password, confirmation|
  And %{I fill in "Choose password" with "#{password}"}
  And %{I fill in "Confirm password" with "#{confirmation}"}
  And %{I press "Save this password"}
end

When /^I return next time$/ do
  When %{session is cleared}
  And %{I go to the homepage}
end
