class window.ChecklistItem extends Backbone.Model
  urlRoot: '/api/v1/checklist_items'

  initialize: =>
    @on 'error', (model, response) =>
      @set response.responseJSON
