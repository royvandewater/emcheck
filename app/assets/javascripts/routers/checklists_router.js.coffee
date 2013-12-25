class ChecklistsRouter extends Backbone.Router
  routes:
    '': 'checklists'

  checklists: =>
    collection = new Checklists
    collection.fetch()
    view = new ChecklistsListView collection: collection
    $('#main-content').html view.render().$el

new ChecklistsRouter
