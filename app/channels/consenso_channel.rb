class ConsensoChannel < ApplicationCable::Channel
  def subscribed
    stream_from "consenso_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
