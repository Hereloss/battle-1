feature 'attack' do
  scenario 'Attacking reduces hitpoints' do
    sign_in_and_play
    find('#player-1-attack').click
    expect(page).to have_content('Player 2 - 90 HP')
  end
end