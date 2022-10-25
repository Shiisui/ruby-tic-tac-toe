# frozen_string_literal: true

require_relative '../lib/board'

RSpec.describe Board do

subject(:board_test) { described_class.new }

  describe '#place_at' do

    context 'when a location and a symbol are given' do

      it 'change the board observable state' do
        expect { board_test.place_at(1, "X") }.to change { board_test.board.first.first }.to("X")
      end

    end

  end

  describe '#add_moves' do

    context 'when an id and location are given' do

        it 'change the player valid_moves observable state' do
          expect { board_test.add_moves(0, 9) }.to change { board_test.players[0].valid_moves }
        end

    end

  end

end