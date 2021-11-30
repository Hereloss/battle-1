feature 'player name form' do
  scenario 'Can enter names and see them onscreen' do
    visit('/')
    fill_in('name_1', with: 'Player 1')
    fill_in('name_2', with: 'Player 2')
    click_button 'submit'
    expect(page).to have_content ('Player 1 vs Player 2')
  end
end