# frozen_string_literal: true

require_relative '../lib/players'

RSpec.describe Player do
  
  describe '#check_location' do

    subject(:player) {described_class.new(0)}

    context 'when a location is given' do

      it 'returns nil' do
        user_input = 0
        result = player.check_location(user_input)
        expect(result).to be_falsy
      end

      it 'it returns the location' do
        user_input = 1
        result = player.check_location(user_input)
        expect(result).to eq(result)
      end
    end

  end

  describe '#valid_input' do
    subject(:player_input) { described_class.new(0) }

    context 'when given a valid input as argument' do

      it 'returns valid input' do
        user_input = 1
        verified_input = player_input.valid_input(user_input)
        expect(verified_input).to be_truthy
      end

    end

    context 'when given invalid input as argument' do

      it 'returns nil' do
        user_input = 0
        verified_input = player_input.valid_input(user_input)
        expect(verified_input).to be_falsy
      end

    end
    
  end

  describe '#player_play' do
  subject(:player_loop) { described_class.new }
    context 'when input is valid' do

      before do
        input = 3
        allow(player_loop).to receive(:player_play).and_return(input)
      end
      
      it 'stops the loop and does not display error message' do
        expect(player_loop).not_to receive(:puts).with('error please enter a valid location for your move!')
        player_loop.player_play
      end

    end

  end

end