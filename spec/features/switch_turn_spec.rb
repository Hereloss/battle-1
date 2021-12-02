# frozen_string_literal: true

feature 'switching turns' do
  scenario "Switch from player 1's turn to player 2's turn" do
    sign_in_and_play
    $game.switch_turn if $game.turn == 2
    click_button 'Attack'
    expect(page).to have_content "Player 2's turn"
  end
end
