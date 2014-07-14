# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $('#manager-table td:contains("true")').parent().addClass('fired')

  $('a.filter').click ->
    console.log this.hash
    $('#manager-table tr').show()
    switch @hash
      when '#fired'        
        $('#manager-table td:contains("false")').parent().hide()
      when '#not_fired'
        $('#manager-table td:contains("true")').parent().hide()
