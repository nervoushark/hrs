@set_nav_text = ->
  $('.sb-nav-link').click ->
    console.log("sb-nav-link")
    console.log($(this).text())
    $(this).parent.addClass('active')
    $('#nav-text').text($(this).text())
    true
  true  

# Запуск всего вышеописанного
handler_ready = ->
  window.set_nav_text()

$(document).on 'page:load', handler_ready # Включаем при ajax обновлении страницы
$(document).on 'turbolinks:load', handler_ready # Включаем. я в восторге от того что это блин работает и только так
#$(document).ready handler_ready # Включаем при обычном обновлении страницы  