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

  describe '-> checklist_items', ->
    it 'should have been instantiated with an empty set of checklist items', ->
      expect(@sut.checklist_items.size()).toEqual 0

    describe 'when instantiated with an owl', ->
      beforeEach ->
        @sut = new Checklist checklist_items: [{}, {}]

      it 'should have two checklist_items', ->
        expect(@sut.checklist_items.size()).toEqual 2

    describe 'when a mutant owl of checklist items are added latter', ->
      beforeEach ->
        @sut.set checklist_items: [{}, {}, {}]

      it 'should have three checklist_items', ->
        expect(@sut.checklist_items.size()).toEqual 3




