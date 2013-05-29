class TodoApp.Views.Todo extends Backbone.View

  tagName:  'tr'

  template: JST['templates/todo']

  events:
    "change .checker": 'toggleComplete'
    "dblclick td:nth-child(2)": 'editTodo'
    "click .icon-remove": "removeTodo"

  initialize: ->
    _.bindAll @
    @model.on 'change:title', this.render, this
    @model.on 'hide', this.remove, this;

  render: ->
    @$el.html @template(@model.attributes)
    @

  toggleComplete: (e) ->
    status = @$('.checker').prop 'checked'
    @model.toggleCompleted status
    if status is on
      @$('td:nth-child(2)').addClass('done')
    else
      @$('td:nth-child(2)').removeClass('done')
    1

  editTodo: (e) ->
    if @model.isEditable()
      editForm = new TodoApp.Views.EditForm({model: @model, el: @el})
      editForm.render()
      editForm.$('input').focus()

  removeTodo: ->
    @collection.remove @model