And(/^there is a comment with content "([^"]*)", by "([^"]*)" on "([^"]*)"$/) do |content, author, title|
  Comment.create!(content: content, author:author, article: Article.find_by(title: title))
end


Given(/^I focus on article "([^"]*)"$/) do |article|
  article = Article.find_by(title: article)
  @scope = "#article_#{article.id}"
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  scope = @scope || 'body'
  within scope do
    fill_in field, with: content
  end
end

And(/^I click "([^"]*)"$/) do |button|
  scope = @scope || 'body'
  within scope do
    click_link_or_button button
  end
end