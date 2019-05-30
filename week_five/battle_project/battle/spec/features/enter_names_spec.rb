require 'capybara/rspec'
require 'spec_helper'
require './app'

feature 'testing homepage' do

  scenario 'users input names into forms and submit to display names' do
    visit("/")
    fill_in :player_one, with: "player_one_name"
    fill_in :player_two, with: "player_two_name"
    click_on "Submit"
    expect(page).to have_content "player_one = player_one_name player_two = player_two_name"
  end
end
