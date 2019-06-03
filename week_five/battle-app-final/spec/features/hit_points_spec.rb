require 'capybara/rspec'
require 'spec_helper'
require './app'

feature 'View player hit points' do

  scenario 'player one views player two\'s points' do
    sign_in_and_play
    expect(page).to have_content "Dave: 10 HP (Hit Points)"
  end
  
end
