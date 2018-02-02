# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#file').change ->
    $('img').remove()
    file = $(this).prop('files')[0]
    if !file.type.match('image.*')
        return
    fileReader = new FileReader()
    fileReader.onloadend = ->
        $('#preview').html('<img src="' + fileReader.result + '"/>')
    fileReader.readAsDataURL(file)
    return
  return