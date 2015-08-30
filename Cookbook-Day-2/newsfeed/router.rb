require_relative 'controller'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "Welcome to the CNNN!"
    puts "You are living it, we're living from it"
    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  def stop
    @running = false
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then @controller.scrap
    when 5 then stop
    else puts "Please press 1, 2, 3 or 4"
    end
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - See all news"
    puts "2 - Send a news"
    puts "3 - Destroy a news"
    puts "4 - Scrap news"
    puts "5 - Stop and exit the program"
  end
end
