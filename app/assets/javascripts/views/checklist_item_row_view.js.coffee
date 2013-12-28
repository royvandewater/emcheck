class window.ChecklistItemRowView extends Backbone.View
  template: JST['templates/checklist_item_row']
  tagName: 'a'
  className: 'list-group-item'

  initialize: =>
    @$el.attr 'href', '#'
    @listenTo @model, 'remove', @remove
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    this
