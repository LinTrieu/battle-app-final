def sign_in_and_play
  visit("/")
  fill_in :player_one, with: "Lin"
  fill_in :player_two, with: "Dave"
  click_on "Submit"
end