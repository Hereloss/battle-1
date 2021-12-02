feature 'attack' do
  scenario 'Player 1 attacks player 2 and gets a notification' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('Player 2 was attacked!')
  end
end