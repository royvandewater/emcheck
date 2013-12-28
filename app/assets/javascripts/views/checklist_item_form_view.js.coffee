class window.ChecklistItemFormView extends Backbone.View
  template: JST['templates/checklist_item_form']

  initialize: =>
    @listenTo @model, 'change:errors', @render
    @listenTo @model, 'sync', =>
      Backbone.history.navigate Path.checklist(id: @model.get('checklist_id')), trigger: true

  context: =>
    model: @model.toJSON()
    cid: @cid

  render: =>
    @$el.html @template @context()
    this

  events:
    'change input' : 'update_model'
    'keyup  input' : 'update_model'
    'submit form' :  'submit'

  submit: ($event) =>
    $event.preventDefault()
    $event.stopPropagation()
    @model.save()

  update_model: =>
    @model.set
      name:  @$('.input-name').val()
      price: @$('.input-price').val()
