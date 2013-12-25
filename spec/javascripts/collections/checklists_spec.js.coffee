describe 'Checklists', ->
  beforeEach ->
    @sut = new Checklists

  it 'should generate a url', ->
    expect(_.result @sut, 'url').toEqual '/api/v1/checklists'

