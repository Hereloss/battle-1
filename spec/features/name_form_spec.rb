feature 'player name form' do
  scenario 'Can enter names and see them onscreen' do
    visit('/')
    fill_in('name', with: 'Player')
    click_button 'submit'
    expect(page).to have_content ('Player')
  end
end