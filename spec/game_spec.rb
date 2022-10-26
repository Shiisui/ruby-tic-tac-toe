# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/players'

RSpec.describe Game do
  
  describe '#player_switch' do
    subject(:game) { Game.new }
    context 'when an id is given' do
      
      it 'returns 1' do
        expect(game.player_switch(0)).to eq(1)
      end

    end

  end

  describe '#player_symbol' do
    subject(:game) { Game.new }
    context 'when an id is given' do
      
      it 'returns X' do
        expect(game.player_symbol(0)).to eq("X")
      end

    end

  end

  describe '#game_over' do
    subject(:game) { Game.new }
    context 'when an id is given' do
      
      it 'returns false' do
        expect(game.game_over(0)).to eq(false)
      end

    end

  end

  

end