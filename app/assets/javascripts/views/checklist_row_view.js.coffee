class window.ChecklistRowView extends Backbone.View
  template: JST['templates/checklist_row']
  tagName: 'li'

  initialize: =>
    @listenTo @model, 'remove', @remove
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    this
