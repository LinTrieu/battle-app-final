require 'capybara/rspec'
require 'spec_helper'
require './app'

feature 'testing homepage' do

  scenario 'users input names into forms and submit to display names' do
    visit("/")
    fill_in :player_one, with: "Lin"
    fill_in :player_two, with: "Dave"
    click_on "Submit"
    expect(page).to have_content "Lin vs. Dave"
  end
end
