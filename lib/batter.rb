class Batter
  attr_reader :id,
              :type
              
  def initialize(bat)
    @id = bat["id"]
    @type = bat["type"]
  end
end