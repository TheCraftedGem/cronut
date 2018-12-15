class ItemRepo 
  attr_reader :collection
  
  def initialize
    @collection = []
  end

  def load(items)
    items.map do |item|
      @collection << Item.new(item)
    end
  end

end