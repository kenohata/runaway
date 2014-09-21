define ["jquery", "backbone", "templates/application"], ($, Backbone, template) ->
  class ApplicationView extends Backbone.View
    render: ->
      @$el.html template()
