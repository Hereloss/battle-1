# frozen_string_literal: true

feature 'Lose message' do
  scenario 'Displays lose message for player 2 losing' do
    sign_in_and_play
    expect($game.player_2).to receive(:rand).and_return(100)
    click_button('Attack!')
    expect(page).to have_content 'Player 2 lost!'
    $game.reset
  end

  scenario 'Displays lose message for player 1 losing' do
    sign_in_and_play
    expect($game.player_2).to receive(:rand).and_return(0)
    click_button('Attack!')
    expect($game.player_1).to receive(:rand).and_return(100)
    click_button('Attack!')
    expect(page).to have_content 'Player 1 lost!'
    $game.reset
  end
end
