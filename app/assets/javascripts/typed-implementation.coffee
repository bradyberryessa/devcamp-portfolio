ready = ->
  Typed.new '.element',
    strings: [
      "You shouldn't judge a book by its cover."
      "But maybe you should judge me by my portfolio."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready