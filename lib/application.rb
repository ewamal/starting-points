Dir[File.dirname(__FILE__) + '/application/*.rb'].each { |file| require file }

class Application

  def initialize
    puts "Hello from Application"
  end
end

