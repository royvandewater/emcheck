describe 'Checklist', ->
  beforeEach ->
    @sut = new Checklist

  it 'should have a urlRoot', ->
    expect(_.result @sut, 'urlRoot').toEqual '/api/v1/checklists'
