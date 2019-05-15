App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function({message_html}) {
    // alert(data.message)
    $('#messages').append(message_html)
  },

  speak: function(message) {
    return this.perform('speak', { message: message });
  }
});

$(() => {
  $(document).on('keypress', '[data-behaviour~=room_speaker]', (event) => {
    if(event.key === 'Enter') {
      const message = { content: event.target.value }
      App.room.speak(message)
      event.target.value = ''
      event.preventDefault()
    }
  })
})
