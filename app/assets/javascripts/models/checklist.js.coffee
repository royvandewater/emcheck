class window.Checklist extends Backbone.Model
  urlRoot: '/api/v1/checklists'

  initialize: =>
    @on 'error', (model, response) =>
      @set response.responseJSON

    @has_many 'checklist_items'

  has_many: (relationship_name) =>
    @[relationship_name] = new window[_.classify relationship_name] @get relationship_name
    @on "change:#{relationship_name}", => @[relationship_name].set @get relationship_name
