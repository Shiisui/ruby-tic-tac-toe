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
      add_moves(id, loc)
      place_at(loc, player_form(id))
      print_board
      return if check_win(id)
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

  def add_moves(id, loc)
    @players[0].moves << loc
    @players[1].moves << loc
    @players[id].valid_moves << loc
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

  def check_win(id)
    moves = @players[id].valid_moves
    winner = []
    wins = [ [1,2,3], [4,5,6], [7,8,9], [1,5,9], [3,5,7], [1,4,7], [3,6,9] ]
    winner = wins.each do |win|
      win.each_with_index do |n, idx|
        moves.each do |move|
          win[idx] = "WIN" if move == n
        end
      end
    end
    winner.each do |w|
      if w.all?("WIN")
        puts "#{@players[id].id} Wins the game"
        return true
      end
    end
    false
  end

end

class Player

  def initialize(id)
    @id = id
    @moves = []
    @valid_moves = []
  end
  attr_accessor :id, :moves, :valid_moves

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
      return location if valid_input(location) && valid_move(location)
      print "error please enter a valid location for your move!\n\n"
    end
  end

  def valid_input(input)
    (1..9).any?(input)
  end

  def valid_move(move)
    return true unless @moves.include?(move)
    return false
  end

end

tictactoe = Game.new

tictactoe.play_game
