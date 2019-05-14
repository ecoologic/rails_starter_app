App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // alert(data.message)
    $('#messages').append(data['message'])
  },

  speak: function(message) {
    return this.perform('speak', { message: message });
  }
});

$(() => {
  $(document).on('keypress', '[data-behaviour~=room_speaker]', (event) => {
    if(event.key === 'Enter') {
      App.room.speak(event.target.value)
      event.target.value = ''
      event.preventDefault()
    }
  })
})
