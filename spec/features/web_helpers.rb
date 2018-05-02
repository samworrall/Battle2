def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Habs'
  fill_in :player_2_name, with: 'Salpal'
  click_button 'Enter game'
end
