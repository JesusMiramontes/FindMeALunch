# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
    alert(1)

    $('body').hover(
       function () {
         alert(2)
       }
    )

    $('#nav > div').hover(
       function () {
         alert(3)
       }
    )
})