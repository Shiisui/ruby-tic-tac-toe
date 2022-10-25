# frozen_string_literal: true

require_relative '../lib/board'

RSpec.describe Board do

  describe '#place_at' do

    context 'when a location and a symbol is given' do
      subject(:board_test) { described_class.new }

      it 'Change the board observable state' do
        expect { board_test.place_at(1, "X") }.to change { board_test.board.first.first }.to("X")
      end

    end

  end

end