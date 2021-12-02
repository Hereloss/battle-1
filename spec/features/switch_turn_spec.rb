feature "switching turns" do

  scenario "Switch from player 1's turn to player 2's turn" do
    sign_in_and_play
    if $game.turn == 2
      $game.switch_turn
    end
    click_button "Attack"
    expect(page).to have_content "Player 2's turn"
  end
end