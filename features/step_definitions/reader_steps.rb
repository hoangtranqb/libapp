Given(/^I am a guest$/) do

end

When(/^I fill the register form with valid data$/) do
  visit('/register')
  fill_in 'reader_email', with: "reader01@gmail.com"
  fill_in 'reader_password', with: "pass"
  fill_in 'reader_password_confirmation', with: "pass"
  click_buton "Register"
end

Then(/^I should be registered in application$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be logged in$/) do
  pending # express the regexp above with the code you wish you had
end