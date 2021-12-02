# frozen_string_literal: true

feature 'hitpoints' do
  scenario 'Can see player hitpoints' do
    sign_in_and_play
    expect(page).to have_content('Player 2 - 90 HP')
  end
end
