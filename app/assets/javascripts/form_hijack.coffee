$ ->
  $(document).on "submit", "#new_message", (event) ->
    event.preventDefault()
    App.messages.send({
      body: $(event.currentTarget).serializeArray()[2].value
    })
