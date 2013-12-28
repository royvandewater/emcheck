class window.ChecklistItemFormView extends Backbone.View
  template: JST['templates/checklist_item_form']

  context: =>
    {}

  render: =>
    @$el.html @template @context()
    this
