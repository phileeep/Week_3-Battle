require_relative './player.rb'

class Game
  attr_reader :player1, :player2

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.minus
    return player
  end
end