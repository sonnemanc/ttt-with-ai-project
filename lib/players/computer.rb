module Players
    class Computer < Player

        def move(board)
            placement = 1 + rand(9)
            placement.to_s
        end

    end


end