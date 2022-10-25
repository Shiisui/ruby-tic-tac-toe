# frozen_string_literal: true

require_relative '../lib/players'

RSpec.describe Player do
  
  describe '#obtain_location' do

    subject(:players) {described_class.new(0)}

    context 'when a location is given' do

        it 'returns an error message once' do
        #   expect(players.obtain_location(10)).to receive().and_return("error please enter a valid location for your move!").once
        end

    end

  end

end