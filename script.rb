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

# Make the board interactive with the user
# Ask the user input and store it
game = true
player_turn = 1

until (game == false)
    game = true
    game_board = initial_board
    display_board = []
    count = 0
    until (game == false)
        

        if player_turn == 1
            
            puts player_one.player
            num = gets.chomp.to_i
            player_one.player_input(num)

            game_board.map! do |row|
                row.map! do |column|
                
                    if column == num 
                        column = player_one.player_character
                    else
                        column = column
                    end
                    
                end
                
            end
            player_turn = 2
       
        elsif player_turn == 2

            puts player_two.player 
            num2 = gets.chomp.to_i
            player_two.player_input(num2)

            game_board.map! do |row2|
                row2.map! do |column2|
                    if column2 == num2 
                        column2 = player_two.player_character
                    else
                        column2 = column2
                    end
                
                end
                
            end
            player_turn = 1
        end

        count += 1

        if count == 9
            game = false
        end

        p game_board
        
    end
end

# display output given the input

# let x and o play turn by turn

# always check if theres a winner

# display the winner and stop the game

