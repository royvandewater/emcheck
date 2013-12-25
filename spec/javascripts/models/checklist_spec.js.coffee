describe 'Checklist', ->
  beforeEach ->
    @sut = new Checklist

  it 'should have a urlRoot', ->
    expect(_.result @sut, 'urlRoot').toEqual '/api/v1/checklists'

  describe 'server side validation fail', ->
    beforeEach ->
      @sut.trigger 'error', @sut, responseJSON: {errors: {name: "Can't be blank"}}

    it 'should update the errors attribute on the model', ->
      expect(@sut.get('errors')).toEqual name: "Can't be blank"

