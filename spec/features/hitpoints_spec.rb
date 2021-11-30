feature 'hitpoints' do
  scenario 'Can see player hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Player 2 - 100 HP')
  end
end