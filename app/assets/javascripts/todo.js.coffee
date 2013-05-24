window.TodoApp =
  Views: {}
  Models: {}
  Collections: {}


class TodoApp.MapRouter extends Backbone.Router
  routes:
    "": "mainPage"

  initialize: ->
    Backbone.history.start()

  mainPage: ->
    console.log 'Main Page'