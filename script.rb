require 'pry-byebug'
initial_board = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

module CheckWin
    def check_win(array)
        # binding.pry
        win_1 = [1,2,3]
        win_2 = [4,5,6]
        win_3 = [7,8,9]
        win_4 = [1,5,9]
        win_5 = [3,5,7]
        win_6 = [1,4,7]
        win_7 = [2,5,8]
        win_8 = [3,6,9]

        array = array.sort

        # do a search through array to find the numbers from wins and declare win if theres win
         
        
    end
end

class Player
    attr_reader :player, :player_character
    attr_reader :player_num
    
    include CheckWin

    def initialize(player, player_character)
        @player = player
        @player_character = player_character
        @player_num = []
    end

    def player_num(num)
        @player_num << num
    end
    
    def check_winn
        $result = check_win(@player_num)
        binding.pry
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
        puts "|  #{initial_board[0][0]}  |  #{initial_board[0][1]}  |  #{initial_board[0][2]}  |"
        puts "###################"
        puts "|  #{initial_board[1][0]}  |  #{initial_board[1][1]}  |  #{initial_board[1][2]}  |"
        puts "###################"
        puts "|  #{initial_board[2][0]}  |  #{initial_board[2][1]}  |  #{initial_board[2][2]}  |"
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
            player_one.player_num(num)

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
            
            if player_one.check_winn == "Yep"
                game = false
            end

        elsif player_turn == 2 && game == true

            puts "~~~~~~~~~~~~~~~~~~~ \n\n#{player_two.player} your turn!\n\n~~~~~~~~~~~~~~~~~~~"
            num2 = gets.chomp.to_i
            player_two.player_num(num2)

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
            if player_two.check_winn == "Yep"
                game = false
            end
        end

        
        count += 1

        if count == 9
          game = false
        end
        puts "###################"
        puts "|  #{game_board[0][0]}  |  #{game_board[0][1]}  |  #{game_board[0][2]}  |"
        puts "###################"
        puts "|  #{game_board[1][0]}  |  #{game_board[1][1]}  |  #{game_board[1][2]}  |"
        puts "###################"
        puts "|  #{game_board[2][0]}  |  #{game_board[2][1]}  |  #{game_board[2][2]}  |"
        puts "###################"
    end
   
end


