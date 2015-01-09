Given(/^I have registered as a player$/) do
  step 'I am on the homepage'
  step 'I fill in "name" with "Josh"'
  step 'I press "New Game"'
end

Then(/^I should see the rock, paper, and scissor buttons$/) do
  page.should have_content('Rock')
  page.should have_content('Paper')
  page.should have_content('Scissors')
end