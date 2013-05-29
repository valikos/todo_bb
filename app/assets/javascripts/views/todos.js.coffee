class TodoApp.Views.Todos extends Backbone.View

  tagName: 'table'
  className: 'table table-striped table-hover'

  initialize: ->
    _.bindAll @
    @collection.on 'add', this.addOne, this
    @collection.on 'reset', this.renderAll, this

  addOne: (todo) ->
    todoView = new TodoApp.Views.Todo({model: todo})
    @$el.append todoView.render().el

  renderAll: ->
    console.log @collection.models
    for todo in @collection.models
      this.addOne todo