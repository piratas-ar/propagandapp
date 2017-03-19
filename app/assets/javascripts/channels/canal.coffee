App.canal = App.cable.subscriptions.create "CanalChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#propagandas').append data['render_propaganda']
    $('#vacio').remove()
    $('#propaganda_titulo').val('')
    $('#propaganda_cuerpo').val('')
    $('#propaganda_url').val('')
