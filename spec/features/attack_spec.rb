feature 'attack' do
  scenario "Player 1 attacks player 2 and gets a notification and reduces player 2's hitpoints by 10" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('Player 2 was attacked!')
    expect(page).to have_content('Player 2 - 90 HP')
  end

  scenario "Player 2 attacks player 1 and gets a notification and reduces player 1's hitpoints by 10" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('Player 1 was attacked!')
    expect(page).to have_content('Player 1 - 90 HP')
  end
end