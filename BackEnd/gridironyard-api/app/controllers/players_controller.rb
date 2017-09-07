class PlayersController < ApplicationController
  def index
    @players = Player.all
    @players.each do |player|
      puts player.name
    end
  end
end
