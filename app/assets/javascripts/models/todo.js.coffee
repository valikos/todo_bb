class TodoApp.Models.Todo extends Backbone.Model

  defaults:
    title: 'write a new todo ...'
    done: false

  parse: ->
    @

  toJSON: ->
    @