When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

And(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end