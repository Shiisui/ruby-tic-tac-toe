initial_board = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

module CheckWin

    def check_win(array)
    
        winner = ""
        # horizontal
        array.each do |row|
            
            if row.all?("X")

                winner = "X"
            elsif row.all?("O")

                winner = "O"
            end
        end
        
        l = 0
        r = -1
        # diagonal
        3.times do 

                if array[l][l] == "X" && array[l+1][l+1] == "X" && array[l+2][l+2] == "X" || array[l][r] == "X" && array[l+1][l+1] == "X" && array[l+2][l] == "X"

                    winner = "X"
                elsif array[l][l] == "O" && array[l+1][l+1] == "O" && array[l+2][l+2] == "O" ||  array[l][r] == "O" && array[l+1][l+1] == "O" && array[l+2][l] == "O"

                    winner = "O"
                end
            end
    
        j = 0
        3.times do 
            # vertical
            if array[0][j] == "X" && array[1][j]  == "X" && array[2][j] == "X"

                winner = "X"
            elsif array[0][j] == "O" && array[1][j] == "O" && array[2][j] == "O"

                winner = "O"
            end

            j += 1
        end

        return winner
    end
end
include CheckWin

class Player
    attr_reader :player, :player_character
    attr_reader :player_num

    def initialize(player, player_character)
        @player = player
        @player_character = player_character
    end
end

puts "Player One Name?"
player_one_name = gets.chomp
player_one = Player.new(player_one_name, "X")

puts "Player Two Name?"
player_two_name = gets.chomp
player_two = Player.new(player_two_name, "O")

game = true
player_turn = 1

        puts "###################"
        puts "|  #{initial_board[2][0]}  |  #{initial_board[2][1]}  |  #{initial_board[2][2]}  |"
        puts "###################"
        puts "|  #{initial_board[1][0]}  |  #{initial_board[1][1]}  |  #{initial_board[1][2]}  |"
        puts "###################"
        puts "|  #{initial_board[0][0]}  |  #{initial_board[0][1]}  |  #{initial_board[0][2]}  |"
        puts "###################"

until (game == false)

    game = true
    game_board = initial_board
    display_board = []
    count = 0
    until (game == false)
    
        if player_turn == 1 && game == true
        
            puts "~~~~~~~~~~~~~~~~~~~ \n\n#{player_one.player} your turn!\n\n~~~~~~~~~~~~~~~~~~~"
            num = gets.chomp.to_i
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
            if check_win(game_board) == "X"

                game = false
                puts "#{player_one.player} WON"
            end

        elsif player_turn == 2 && game == true

            puts "~~~~~~~~~~~~~~~~~~~ \n\n#{player_two.player} your turn!\n\n~~~~~~~~~~~~~~~~~~~"
            num2 = gets.chomp.to_i
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
            if check_win(game_board) == "O"

                game = false
                puts "#{player_two.player} WON"
            end
        end

        count += 1
        if count == 9

          game = false
        end
        puts "###################"
        puts "|  #{game_board[2][0]}  |  #{game_board[2][1]}  |  #{game_board[2][2]}  |"
        puts "###################"
        puts "|  #{game_board[1][0]}  |  #{game_board[1][1]}  |  #{game_board[1][2]}  |"
        puts "###################"
        puts "|  #{game_board[0][0]}  |  #{game_board[0][1]}  |  #{game_board[0][2]}  |"
        puts "###################"
    end
   
end
