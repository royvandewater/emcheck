class ChecklistsRouter extends Backbone.Router
  routes:
    ''               : 'checklists'
    'checklists'     : 'checklists'
    'checklists/new' : 'new_checklist'

  checklists: =>
    collection = new Checklists
    collection.fetch()
    view = new ChecklistsListView collection: collection
    $('#main-content').html view.render().$el

  new_checklist: =>
    model = new Checklist
    view = new ChecklistFormView model: model
    $('#main-content').html view.render().$el
    console.log view.$el.html()

new ChecklistsRouter
