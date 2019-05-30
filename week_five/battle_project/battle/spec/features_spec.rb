require 'capybara/rspec'
require_relative 'spec_helper'
require './app'

# Capybara.app = Battle


feature 'testing homepge' do
  scenario 'open homepage' do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end
end
