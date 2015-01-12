Given(/^I have registered as a player$/) do
  step 'I am on the homepage'
  step 'I fill in "name" with "Josh"'
  step 'I press "New Game"'
end

Then(/^I should see the rock, paper, and scissor buttons$/) do
  page.should have_selector('a', text: 'ROCK')
  page.should have_selector('a', text: 'PAPER')
  page.should have_selector('a', text: 'SCISSORS')
end

Given(/^I choose rock$/) do
  click_link('ROCK')
end

Then(/^I should see a result$/) do
  page.should satisfy {|page| page.has_content?('Player wins!') || page.has_content?('Computer wins!') || page.has_content?('It\'s a draw!')}
end

Given(/^I have played one game$/) do
  step 'I am on the homepage'
  step 'I fill in "name" with "Josh"'
  step 'I press "New Game"'
  step 'I choose rock'
end

Then(/^I should see the game page$/) do
  page.should have_content('ROCK')
  page.should have_content('PAPER')
  page.should have_content('SCISSORS')
end