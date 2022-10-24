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
      loc = @players[id].player_play
      place_at(loc, player_form(id))
      print_board
      check_win()
      id = player_switch(id)
    end
    
  end

  def place_at(loc, form)
   @board = @board.each do |x|
      x.each_with_index do |y, idx|
       x[idx] = form if y == loc
      end
    end
  end 

  def print_board
    @board.each { |x| print "#{x}\n" }
    print "To play the game you have to enter the coordinates of the move, example for the top left corner: 1\n\n"
  end

  def player_switch(id)
    return 1 if id == 0
    return 0
  end

  def player_form(id)
    return 'X' if id == 0
    return 'O'
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
    loop do 
      location = gets.chomp.to_i
      return location if valid_input(location)
      print "error please enter a valid location for your move!\n\n"
    end
  end

  def valid_input(input)
    
  end

end

tictactoe = Game.new

tictactoe.play_game
