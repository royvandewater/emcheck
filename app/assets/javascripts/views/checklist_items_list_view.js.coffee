class window.ChecklistItemsListView extends Backbone.View
  template: JST['templates/checklist_items_list']

  initialize: =>
    @views = []
    @listenTo @collection, 'add', @add_one
    @listenTo @collection, 'sync error request reset', @render

  context: =>
    loading: @collection.loading
    model: @model.toJSON()

  render: =>
    console.log @context()
    @$el.html @template @context()
    @remove_views()
    @collection.each @add_one
    this

  remove: =>
    @remove_views()
    super

  # Instance Methods
  add_one: (model) =>
    view = new ChecklistItemRowView model: model
    @$('ul').append view.render().$el
    @views.push view

  remove_views: =>
    _.each @views, (view) =>
      view.remove()

    @views = []
