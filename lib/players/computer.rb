module Players 
    class Computer < Player



    def move(board)
       # binding.pry
        if !board.full?
            board.valid_move?(board)
        end
    end


    end
end