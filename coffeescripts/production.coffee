require ["jquery", "views/application_view"], ($, AppView) ->
  $ ->
    $el  = $ '#app'
    view = new AppView(el: $el)
    view.render()
