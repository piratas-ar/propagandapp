class CanalChannel < ApplicationCable::Channel
  def subscribed
    stream_from "canal_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
