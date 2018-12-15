class Topping 
  attr_reader :id,
              :type
  def initialize(toppin)
      @id = toppin["id"]
      @type = toppin["type"]
  end
end