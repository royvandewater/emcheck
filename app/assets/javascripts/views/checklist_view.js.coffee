class window.ChecklistView extends Backbone.View
  template: JST['templates/checklist']

  initialize: =>
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    this
