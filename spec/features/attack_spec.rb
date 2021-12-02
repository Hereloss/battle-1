feature 'attack' do
  scenario 'Attacking reduces hitpoints' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('Player 2 was attacked!')
  end
end