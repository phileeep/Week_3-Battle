class Player
  attr_reader :name, :hp, :minus

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end

  def minus
    @hp -= 10
  end

  private
  attr_writer :hp
end