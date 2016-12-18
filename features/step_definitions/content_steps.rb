Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

And(/^I should see "([^"]*)" current date$/) do |content|
  date = DateTime.now
  expect(page).to have_content content
  expect(page).to have_content date.strftime("%Y-%m-%d")
end