# Create a board of tictactoe
# Create nested arrays 3 rows 3 columns
# add them values 1..9

initial_board = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

class Player
    attr_reader :player, :player_character
    def initialize(player, player_character)
        @player = player
        @player_character = player_character
        @player_input = []
    end
    def player_input(num)
        @player_input << num
    end

end



puts "Player One Name?"
player_one_name = gets.chomp
player_one = Player.new(player_one_name, "X")

puts "Player Two Name?"
player_two_name = gets.chomp
player_two = Player.new(player_two_name, "O")

puts player_one.player_character
puts player_two.player_character
# Make the board interactive with the user
# Ask the user input and store it
game = true

until (game == false)
    game = true
    game_board = initial_board
    display_board = []
    until (game == false)
        puts "Enter a number"
        num = gets.chomp.to_i
        player_one.player_input(num)

        game_board.map! do |row|
            row.map! do |column|
               (column == num) ? column = player_one.player_character : column
            end
        end
        p game_board
        game = false
        
    end
end

# display output given the input

# let x and o play turn by turn

# always check if theres a winner

# display the winner and stop the game

