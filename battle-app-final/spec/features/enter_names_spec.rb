require 'capybara/rspec'
require 'spec_helper'
require './app'

feature 'Enter player names into Battle App' do

  scenario 'users input names into forms and submit to display names' do
    sign_in_and_play
    expect(page).to have_content "Lin vs. Dave"
  end
end
