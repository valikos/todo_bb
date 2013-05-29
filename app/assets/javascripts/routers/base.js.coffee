class TodoApp.Routers.Base extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    Backbone.history.start()

  index: ->
    layout = new TodoApp.Views.Layout()
    $('.todo-widget').html layout.render().el

    todos = new TodoApp.Collections.Todos

    newForm = new TodoApp.Views.NewForm({collection: todos})
    layout.$el.append newForm.render().el

    todosView = new TodoApp.Views.Todos({collection: todos})
    layout.$el.append todosView.render().el
    todos.fetch()
