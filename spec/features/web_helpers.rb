def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Sophie'
  fill_in :player_2_name, with: 'Nik'
  click_button 'Submit'
end
