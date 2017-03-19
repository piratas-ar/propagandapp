class PropagandasController < ApplicationController
  def index
    @propagandas = Propaganda.all
  end
  def new
    @propaganda= Propaganda.new
  end
  def create
    @propaganda= Propaganda.create(propaganda_params)
    if @propaganda.persisted?
      ActionCable.server.broadcast('canal_channel', render_propaganda: render_propaganda)
    end
  end
  private
  def propaganda_params
    params.require(:propaganda).permit(:titulo, :cuerpo, :url)
  end

  def render_propaganda
    render(partial: 'propaganda', locals: { propaganda: @propaganda })
  end
end
