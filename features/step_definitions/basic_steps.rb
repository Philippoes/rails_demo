When(/^I am on the landing page$/) do
  visit root_path
end

Given(/^the following articles exists$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end

Then(/^I should see a new Article with title "([^"]*)" and content "([^"]*)" and author "([^"]*)"$/) do |title, content, author|
  expect(page).to have_content title, content, author
end

Then(/^I should be on the create\-article page$/) do
end

Then(/^I should be on the "([^"]*)" page$/) do |page|
  if page == "/users/sign_in"
    expect(page).to eq new_user_session_path
  end
end