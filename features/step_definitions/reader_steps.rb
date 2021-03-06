Given(/^I am a guest$/) do

end

When(/^I fill the register form with valid data$/) do
  visit('/register')
  fill_in 'reader_email', with: "reader01@gmail.com"
  fill_in 'reader_password', with: "pass"
  fill_in 'reader_password_confirmation', with: "pass"
  click_button "Register"
end

Then(/^I should be registered in application$/) do
  expect(Reader.find_by_email("reader01@gmail.com")).not_to  be_nil
end

# Then(/^I should be logged in$/) do
#   expect(page).to have_content("Welcome, reader01@mail.com")
# end

When(/^I fill the register form with invalid data$/) do
  visit('/register')
  fill_in 'reader_email', with: "reader"
  fill_in 'reader_password', with: "pass"
  fill_in 'reader_password_confirmation', with: "pass"
  click_button "Register"
end

Then(/^I should see the resister form again$/) do
  expect(page).to have_selector('form#new_reader')  
end

Then(/^I should not be registered in application$/) do
  expect(Reader.find_by_email("reader")).to be_nil  
end

