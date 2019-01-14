Dir[File.dirname(__FILE__) + '/application/*.rb'].each { |file| require file }


class World
  attr_accessor :grid

  def initialize(grid)
    @grid = grid
  end

  def start
    @grid[0][0].makelife
  end

  def give_lives(*coordinates)
    coordinates.each do |x,y|
      @grid[x][y].make_life
    end
  end
  def murder(*coordinates)
    coordinates.each do |x,y|
      @grid[x][y].make_dead
    end
  end
end

class Cell
  attr_accessor :alive

  def initialize(x, y)
    @alive = false
    @x = x
    @y = y
  end

  def make_life
    @alive = true
  end

  def make_dead
    @alive = false
  end
end

class Grid
  attr_accessor :rows, :columns

  def initialize(rows=3, columns=3)
    @rows = rows
    @columns = columns
    @grid = Array.new(rows) do |row|
              Array.new(columns) do |column|
                puts "row: #{row}"
                puts "column: #{column}"
                Cell.new(column, row)
              end
            end
  end

  def number_of_living_neigbours(cell)

  end

end
