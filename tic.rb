require 'colorize'
class Player
    @@nr_of_moves = 0

    def initialize(name)
        @name = name
        @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

    def show_board
        puts (@board[0]).to_s + '|' + (@board[1]).to_s + '|' + (@board[2]).to_s
        puts (@board[3]).to_s + '|' + (@board[4]).to_s + '|' + (@board[5]).to_s
        puts (@board[6]).to_s + '|' + (@board[7]).to_s + '|' + (@board[8]).to_s
    end

    def replace_cell(position, symbol)
        @board[position - 1] = symbol
        puts (@board[0]).to_s + '|' + (@board[1]).to_s + '|' + (@board[2]).to_s
        puts (@board[3]).to_s + '|' + (@board[4]).to_s + '|' + (@board[5]).to_s
        puts (@board[6]).to_s + '|' + (@board[7]).to_s + '|' + (@board[8]).to_s
        @@nr_of_moves += 1
    end

    def pick_cell(cell_number, symbol)
        (0..9).each do |times|
            if times.odd?
                puts 'Player 2 turn!'
                cell_number = gets.chomp
                symbol = 'O'.blue
                replace_cell(cell_number.to_i, symbol)
            else
                puts 'Player 1 turn, pick an empty cell from 1-9!'
                cell_number = gets.chomp
                symbol = 'X'.red
                replace_cell(cell_number.to_i, symbol)
        end
        end
    end
end

sly = Player.new('sly')
sly.show_board

sly.pick_cell(2, 'X')
