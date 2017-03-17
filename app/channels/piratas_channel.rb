class PiratasChannel < ApplicationCable::Channel
  def subscribed
    stream_from "piratas_channel"
    current_user ||= 'algun pirata' # @TODO borrar cuando implementemos devise
    ActionCable.server.broadcast 'piratas_channel', accion: :entro, pirata: current_user
  end

  def unsubscribed
    current_user ||= 'algun pirata' # @TODO borrar cuando implementemos devise
    ActionCable.server.broadcast 'piratas_channel', accion: :salio, pirata: current_user
  end
end
