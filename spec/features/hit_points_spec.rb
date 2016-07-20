feature 'View hit points' do
  scenario 'see Player2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Sophie'
    fill_in :player_2_name, with: 'Nik'
    click_button 'Submit'
    expect(page).to have_content 'Nik: 60HP'
  end
end
