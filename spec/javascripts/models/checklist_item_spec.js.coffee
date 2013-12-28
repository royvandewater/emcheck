describe 'ChecklistItem', ->
  beforeEach ->
    @sut = new ChecklistItem

  it 'should have a urlRoot', ->
    expect(_.result @sut, 'urlRoot').toEqual '/api/v1/checklist_items'

