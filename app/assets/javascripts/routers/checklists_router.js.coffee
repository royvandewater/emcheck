class ChecklistsRouter extends Backbone.Router
  routes:
    ''               : 'checklists'
    'checklists'     : 'checklists'
    'checklists/new' : 'new_checklist'
    'checklists/:id' : 'checklist'

  checklist: (id) =>
    model = new Checklist id: id
    model.fetch()
    view = new ChecklistView model: model
    $('#main-content').html view.render().$el

  checklists: =>
    collection = new Checklists
    collection.fetch()
    view = new ChecklistsListView collection: collection
    $('#main-content').html view.render().$el

  new_checklist: =>
    model = new Checklist
    view = new ChecklistFormView model: model
    $('#main-content').html view.render().$el

new ChecklistsRouter
