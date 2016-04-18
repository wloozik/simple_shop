//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

    jsHover = ->
      hEls = document.getElementById('menu').getElementsByTagName('li')
      i = 0
      len = hEls.length
      while i < len

        hEls[i].onmouseover = ->
          @className += ' jshover'
          return

        hEls[i].onmouseout = ->
          @className = @className.replace(' jshover', '')
          return

        i++
      return

    if window.attachEvent and navigator.userAgent.indexOf('Opera') == -1
      window.attachEvent 'onload', jsHover
