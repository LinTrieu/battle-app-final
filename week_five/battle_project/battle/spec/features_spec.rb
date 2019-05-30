require 'capybara/rspec'
require_relative 'spec_helper'
require './app'

# Capybara.app = Battle


feature 'testing homepge' do

  scenario 'users input names into forms and submit to display names' do
    visit("/")
    fill_in "player_one", with: "player_one_name"
    fill_in "player_two", with: "player_two_name"
    click_on "Submit"
    expect(page).to have_content "player_one = player_one_name player_two = player_two_name"
  end


  # scenario 'users input names into forms and submit to display names' 
  #   visit("/")
  #   fill_in "name", with: "name"
  #   click_on "Submit"
  #   expect(page).to have_content "name"
  # end



end
