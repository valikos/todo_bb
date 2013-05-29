class TodoApp.Collections.Todos extends Backbone.Collection

  model: TodoApp.Models.Todo
  url: '/todos'

  initialize: ->
    @.on 'remove', this.hideTodo

  hideTodo: (model) ->
    model.destroy()
    model.trigger 'hide'