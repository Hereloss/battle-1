# frozen_string_literal: true

feature 'player name form' do
  scenario 'Can enter names and see them onscreen' do
    sign_in_and_play
    expect(page).to have_content('Player 1 vs Player 2')
  end
end
