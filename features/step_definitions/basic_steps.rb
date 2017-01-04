Given(/^the following articles exists$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end

Then(/^I should see a new Article with title "([^"]*)" and content "([^"]*)" and author "([^"]*)"$/) do |title, content, author|
  expect(page).to have_content title, content, author
end

Then(/^I should be on the "([^"]*)" page$/) do |page|
  if page == "/users/sign_in"
    expect(page).to eq new_user_session_path
  end
end

When(/^I am on the "([^"]*)" page$/) do |page|
  if page == "landing"
    visit root_path
  end
  if page == "article creation"
    visit article_create_path
  end
end

Given(/^that there is a user with an email of "([^"]*)"$/) do |email|
  FactoryGirl.create(:user, email: email, password: "password")
end

Given(/^"([^"]*)" is logged in$/) do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end