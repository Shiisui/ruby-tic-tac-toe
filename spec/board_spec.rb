# frozen_string_literal: true

require_relative '../lib/board'

RSpec.describe Board do

  describe '#place_at' do

    context 'when a location and a symbol is given' do
      subject(:board) { described_class.new }

      it 'Change the board observable state' do
        expect(board.place_at(1, "X"))
      end

    end

  end

end