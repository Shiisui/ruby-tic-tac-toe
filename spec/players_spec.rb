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

    end

  end

end