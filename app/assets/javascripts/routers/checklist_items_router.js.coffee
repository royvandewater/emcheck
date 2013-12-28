class ChecklistItemsRouter extends Backbone.Router
  routes:
    'checklists/:checklist_id/checklist_items/new': 'new_checklist_items'

  new_checklist_items: (checklist_id) =>
    model = new ChecklistItem checklist_id: checklist_id
    view = new ChecklistItemFormView model: model
    $('#main-content').html view.render().$el

new ChecklistItemsRouter
