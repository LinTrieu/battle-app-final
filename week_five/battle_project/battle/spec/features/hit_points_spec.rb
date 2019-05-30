require 'capybara/rspec'
require 'spec_helper'
require './app'

feature 'view players points' do

  scenario 'player one views player two\'s points' do
    visit("/hit-points")
    expect(page).to have_content "10 points"
  end

end
