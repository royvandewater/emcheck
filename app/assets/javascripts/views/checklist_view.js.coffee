class window.ChecklistView extends Backbone.View
  template: JST['templates/checklist']

  initialize: =>
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    view = new ChecklistItemsListView model: @model, collection: @model.checklist_items
    @$el.append view.render().$el
    this
