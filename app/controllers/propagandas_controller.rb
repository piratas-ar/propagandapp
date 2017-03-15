class PropagandasController < ApplicationController
  def index
    @propagandas = Propaganda.all 
  end
  def new
    @propaganda= Propaganda.new
  end
  def create
    @propaganda= Propaganda.create(propaganda_params)
  end
  private
  def propaganda_params
    params.require(:propaganda).permit(:titulo, :cuerpo, :url)
  end
end

