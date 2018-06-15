# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery.fn.animateAuto = () ->
  @each (i, el) ->
    el = jQuery(el)
    elem = el.clone().css('width': 'auto').appendTo(el.parent())
    width = elem.css('width')
    elem.remove()
    el.animate { 'width': width }
    return

jQuery.fn.hoverToggle = (a, b) ->
  cb = ->
    [b, a][@_tog ^= 1].call $(this)
    return
  @hover cb

jQuery ->
  $('.weather-col').hoverToggle( () ->
    $(this).find('.forecast').animateAuto()
  , () ->
    $(this).find('.forecast').animate({ width: '0%' })
  )