require './lib/batter'
require './lib/topping'

class Item 
  attr_reader :id,
              :type,
              :name, 
              :ppu,
              :batters,
              :toppings
  def initialize(item)
    @id = item["id"]
    @type = item["type"]
    @name = item["name"]
    @ppu = item["ppu"]  
    @batters =  item["batters"]["batter"].map do |e|
      Batter.new(e)
    end
    @toppings = item["topping"].map do |e|
      Topping.new(e)
    end
  end


end