Dir[File.dirname(__FILE__) + '/application/*.rb'].each { |file| require file }

class Application
  def initialize
  end
end

class Grid
  def initialize(arr)
    @arr = arr
  end
end

class Environment
  def initialize(grid)
    @grid = grid
  end
end
