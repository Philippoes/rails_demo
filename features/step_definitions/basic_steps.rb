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
  if page == "my articles"
    visit user_articles_path
  end
end

Given(/^that there is a user logged in with an email of "([^"]*)"$/) do |email|
  FactoryGirl.create(:user, email: email)
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end

When(/^I go to the "([^"]*)" page$/) do |page|
  if page == "landing"
    visit root_path
  end
  if page == "my articles"
    visit user_articles_path
  end
end

Given(/^that there is an article with title: "([^"]*)" and content: "([^"]*)" made by a user with email "([^"]*)"$/) do |title, content, email|
  Article.create(title: title, content: content, user: FactoryGirl.create(:user, email: email))
end

And(/^that user is logged in$/) do
  user = User.find_by(email: "email@ranom.com")
  login_as(user, scope: :user)
end