# frozen_string_literal: true

require 'game'

describe Game do
  describe '#attack' do
    it 'responds to attack' do
      expect(subject).to respond_to(:attack)
    end

    it 'When attack player 2, player 2 will take damage' do
      player_2 = double
      expect(player_2).to receive(:take_damage)
      subject.attack(player_2)
    end
  end

  context 'players' do
    it 'creates players' do
      expect(subject.player_1).to be_a(Player)
      expect(subject.player_2).to be_a(Player)
    end
  end

  context 'Turns' do
    it 'Knows what turn it is' do
      expect(subject.turn).to eq 1
    end

    it 'Can switch turn' do
      subject.switch_turn
      expect(subject.turn).to eq 2
    end
  end

  describe '#play' do
    it 'Player receives damage, and turn changes' do
      expect(subject).to receive(:attack)
      expect(subject).to receive(:switch_turn)
      subject.play
    end
  end
end
