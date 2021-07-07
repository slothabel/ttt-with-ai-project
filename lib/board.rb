require 'pry'
class Board
    attr_accessor :cells
    
    def initialize()
        reset!
      end

    def reset!
        @cells = Array.new(9, " ")
       # binding.pry
    end

    def display
      puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
      puts "-----------"
      puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
      puts "-----------"
      puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end
    
    def position(input)
        cells[input.to_i - 1]
    end
    
    def full?
        cells.all? { |token| token == 'X' || token == 'O' }
    end

    def turn_count
        cells.count { |token| token == 'X' || token == 'O' }

    end
    
    def taken?(index)
        !(position(index) == " " || position(index) == "")

    end

    def valid_move?(index)
    input = index.to_i
        input.between?(1, 9) && !taken?(input)
    end

    def update(input, player)
       # binding.pry
        cells[input.to_i-1] = player.token
    end

    
    
    
    
end#class ender