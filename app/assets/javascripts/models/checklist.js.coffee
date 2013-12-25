class window.Checklist extends Backbone.Model
  urlRoot: '/api/v1/checklists'

  initialize: =>
    @on 'error', (model, response) =>
      @set response.responseJSON
