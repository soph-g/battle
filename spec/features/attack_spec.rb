feature 'Attack' do

  scenario 'Player 1 attacks player 2 and gets confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to(have_content("Sophie attacked Nik"))
  end

  scenario 'Player 1 attacked player 2, reducing their HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to(have_content("Nik: 60HP"))
    expect(page).to(have_content("Nik: 50HP"))
  end

end
