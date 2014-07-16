# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

  # coloring rows
  coloring = (s...) ->
    a = if s[1]? then s[1] else s[0]
    $(".colored-table td:contains(#{s[0]})").parent().addClass(a)

  coloring "true", "fired"
  coloring "pending"
  coloring "contract"
  coloring "sale"

  # row filter
  filtered = (s) ->
    $(".filtered td:contains('#{s}')").parent().show()

  $('a.filter').click ->
    $('.filtered tr:not(:first)').hide()
    switch @hash
      when '#all'
        $('.filtered tr').show()
      when '#fired'        
        filtered "true" 
      when '#not_fired'
        filtered "false"
      when '#pending'
        filtered "pending"
      when '#contract'
        filtered "contract"
      when '#sale'
        filtered "sale"
