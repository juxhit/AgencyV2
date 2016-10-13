# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('.skills').select2
    allowClear: false
    multiple: true
    tags: true
    theme: 'bootstrap'


$(document).ready(ready)
$(document).on('page:load', ready)
