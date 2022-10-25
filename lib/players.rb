# frozen_string_literal: true

class Player
  def initialize(id)
    @id = id
    @moves = []
    @valid_moves = []
  end
  attr_accessor :id, :moves, :valid_moves

  def player_play
    player_id_turn
    obtain_location
  end

  def player_id_turn
    print "#{@id} turn to play: \n"
  end

  def obtain_location
    loop do
      location = gets.chomp.to_i
      return location if valid_input(location) && valid_move(location)

      puts "error please enter a valid location for your move!"
    end
  end

  def valid_input(input)
    (1..9).any?(input)
  end

  def valid_move(move)
    return true unless @moves.include?(move)

    false
  end
end