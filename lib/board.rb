class Board
    attr_accessor   :cells

    def initialize
        reset!
    end

    def reset!
        @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    def position(user_input)
        index = user_input.to_i - 1
        cells[index]
    end

    def update(user_input, player)
        cells[user_input.to_i-1] = player.token
    end

    def full?
        @cells.all? {|index| index == "X" || index == "O"}
    end

    def turn_count
        @cells.count do |index|
        index == "X" || index =="O"
        end
    end

    def taken?(user_input)
        !(position(user_input).nil? || position(user_input) == " ")
    end

    def valid_move?(user_input)
        user_input.to_i.between?(1,9) && !taken?(user_input)
    end

end