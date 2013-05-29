class TodoApp.Views.EditForm extends Backbone.View

  template: JST['templates/edit_form']

  events:
    "submit": "updateTodo"

  render: ->
    @$el.html @template(@model.attributes)
    @

  updateTodo: (e) ->
    e.preventDefault()
    title = @$('input[name=title]').val()
    @model.changeTitle(title)
    @undelegateEvents()