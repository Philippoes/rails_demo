When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

And(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

And(/^there is a comment with content "([^"]*)", by "([^"]*)" on "([^"]*)"$/) do |content, author, title|
  Comment.create!(content: content, author:author, article: Article.find_by(title: title))
  Binding.pry
end