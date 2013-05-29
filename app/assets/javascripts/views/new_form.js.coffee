class TodoApp.Views.NewForm extends Backbone.View

  template: JST['templates/new_form']

  events:
    'submit': "addNew"

  render: ->
    @$el.html @template
    @

  addNew: (e) ->
    e.preventDefault()

    @collection.create(
      title: @$('input[name=title]').val(),
      {wait: true}
    )