
class Game
    def initialize
        @board = Array.new(3) { Array.new(3, "*") }
        @players = [Player.new(1), Player.new(2)]
    end
    attr_accessor :board

    def print_board
        @board.each { |x| print "#{x}\n" }
    end
end

class Player
    def initialize(id)
        @id = id
    end
end

tictactoe = Game.new

tictactoe.print_board
