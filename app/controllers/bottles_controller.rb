class BottlesController < ApplicationController
  def index
    @bottles = Bottle.all
  end

  def show
    set_bottle
  end

  private

  def set_bottle
    @bottle = Bottle.find(:id)
  end

  def bottle_params(*args)
    params.require(:bottle).permit(*args)
  end
end
