class Game

  def initialize
    @board = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]
    @players = [Player.new(1), Player.new(2)]
  end
  attr_accessor :board, :players

  def print_board
    @board.each { |x| print "#{x}\n" }
    print "To play the game you have to enter the coordinates of the move, example for the top left corner: 1\n\n"
  end

  def play_game
    
  end

  def check_win

  end

end

class Player

  def initialize(id)
    @id = id
  end
  attr_accessor :id

  def player_id_turn
    print "#{@id} turn to play: \n"
  end

  def player_play
    player_id_turn
    place_at(get_location, player_form)

  end

  def get_location
    location = gets.chomp
  end

  def place_at(loc, form)
    # place X or O at location using location map to translate the location given by the human.

  end

  def player_form
    return 'X' if @id == 1
    return 'O'
  end

  def location_map

  end 

end

tictactoe = Game.new

tictactoe.print_board
