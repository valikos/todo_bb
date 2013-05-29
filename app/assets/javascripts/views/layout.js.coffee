class TodoApp.Views.Layout extends Backbone.View
  id: 'todo-layout'
  className: 'well'

  template: JST['templates/layout']

  render: ->
    @$el.html @template
    @