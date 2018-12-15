class Batter
  attr_reader :id,
              :type,
              :new,
              :test
              
  def initialize(bat)
    @id = bat["id"]
    @type = bat["type"]
  end
end