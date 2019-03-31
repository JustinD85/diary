require 'gosu'
require './lib/player'
require './lib/ai'
require './lib/io'

class Game < Gosu::Window

  def initialize
    super 620, 320
    self.caption = "Monster Battle"
    @background_image = Gosu::Image.new('img/pokemon_background_img.png', :tileable => true)
    @player = Player.new
  end
  
  def update
    if Gosu.button_down? Gosu::KB_LEFT or Gosu::button_down? Gosu::GP_LEFT
      @player.turn_left
    end
    if Gosu.button_down? Gosu::KB_RIGHT or Gosu::button_down? Gosu::GP_RIGHT
      @player.turn_right
    end
    if Gosu.button_down? Gosu::KB_UP or Gosu::button_down? Gosu::GP_BUTTON_0
      @player.accelerate
    end
    @player.move
  end
#test
  def draw
    @player.draw
    @background_image.draw(0, 0, 0)
  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    else
      super
    end
  end
end

Game.new.show


