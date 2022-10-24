class Game

  def initialize
    @board = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]
    @players = [Player.new(0), Player.new(1)]
  end
  attr_accessor :board, :players

  
  def play_game
    id = 0
    print_board    
    loop do
      @players[id].player_play
      
    end
    
  end

  def print_board
    @board.each { |x| print "#{x}\n" }
    print "To play the game you have to enter the coordinates of the move, example for the top left corner: 1\n\n"
  end

  def place_at(loc, form)
    # return X or O using location map to translate the location given by the human.

  end

  def player_switch(id)
    return 1 if id == 0
    return 0
  end

  def player_form(id)
    return 'X' if id == 0
    return 'O'
  end 

  def location_map

  end

  def check_win

  end

end

class Player

  def initialize(id)
    @id = id
  end
  attr_accessor :id

  def player_play
    player_id_turn
    get_location
  end

  def player_id_turn
    print "#{@id} turn to play: \n"
  end

  def get_location
    location = gets.chomp
  end

end

tictactoe = Game.new

tictactoe.play_game
