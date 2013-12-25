class window.Checklists extends Backbone.Collection
  model: Checklist
  url: (new Checklist).urlRoot
