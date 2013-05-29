class TodoApp.Models.Todo extends Backbone.Model
  toggleCompleted: (status) ->
    @set({done: status})
    @save()

  changeTitle: (title) ->
    @set({title: title})
    @save()

  isEditable: ->
    @get('done') is off