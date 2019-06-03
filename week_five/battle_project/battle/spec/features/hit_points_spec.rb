require 'capybara/rspec'
require 'spec_helper'
require './app'

feature 'View player hit points' do

  scenario 'player one views player two\'s points' do
    visit("/")
    fill_in :player_one, with: "Lin"
    fill_in :player_two, with: "Dave"
    click_on "Submit"
    expect(page).to have_content "Dave: 10 HP (Hit Points)"
  end
  
end
