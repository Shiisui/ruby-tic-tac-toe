# frozen_string_literal: true

require_relative '../lib/players'

RSpec.describe Player do
  
  describe '#check_location' do

    subject(:player) {described_class.new(0)}

    context 'when a location is given' do

      before do
        allow(player).to receive(:puts).and_return("error please enter a valid location for your move!").once
      end

      it 'returns an error message once' do
        expect(player).to receive(:puts).and_return("error please enter a valid location for your move!").once
        player.check_location(0)
      end

      it 'it returns the location' do
        expect(player.check_location(1)).to eq(1)
      end
    end

  end

  describe '#valid_input' do
    subject(:player_input) { described_class.new(0) }
    context 'when given a valid input as argument' do

      it 'returns valid input' do
        user_input = 1
        verified_input = player_input.valid_input(user_input)
        expect(verified_input).to eq(1)
      end
    end
  end

end