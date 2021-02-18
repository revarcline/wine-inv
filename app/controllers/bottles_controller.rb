class BottlesController < ApplicationController
  def index
    @bottles = Bottle.all
  end

  def show
    set_bottle
  end

  def new
    @bottle = Bottle.new
    all_params
  end

  def create
    @bottle = Bottle.new(bottle_params(:name,
                                       :vintage,
                                       :producer_id,
                                       :appellation_id,
                                       :varietal_ids,
                                       :bin,
                                       :desc))
    @bottle.save
    p @bottle
    redirect_to bottle_path(@bottle)
  end

  private

  def set_bottle
    @bottle = Bottle.find(params[:id])
  end

  def bottle_params(*args)
    params.require(:bottle).permit(*args)
  end

  def all_params
    @varietals = Varietal.all
    @producers = Producer.all
    @appellations = Appellation.all
  end
end
