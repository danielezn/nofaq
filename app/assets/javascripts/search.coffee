$ ->
  $('a[href="#search"]').on 'click', (event) ->
    debugger
    event.preventDefault()
    $('#search').addClass 'open'
    $('#search > form > input[type="search"]').focus()
    return
  $('#search, #search button.close').on 'click keyup', (event) ->
    if event.target == this or event.target.className == 'close' or event.keyCode == 27
      $(this).removeClass 'open'
    return