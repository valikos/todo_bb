class TodoApp.Views.Layout extends Backbone.View
  id: 'todo-layout'
  className: 'row-fluid'

  template: JST['templates/layout']

  render: ->
    @$el.html @template
    @