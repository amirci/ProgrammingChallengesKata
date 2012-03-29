{Minesweeper} = require './Minesweeper'


describe 'Minesweeper', ->

  subject = null
  
  beforeEach ->
    subject = new Minesweeper()
  
  it 'Should work with one row', ->
    given = ["1 3", "*.."].join("\n")
    expected = "Field 1\n*10"
    actual = subject.proximity(given)
    expect(actual).toEqual(expected)
    
  it 'Should work with two rows', ->
    given = ["2 3", "*..", "*.."].join("\n")
    expected = "Field 1\n*20\n*20"
    actual = subject.proximity(given)
    expect(actual).toEqual(expected)    
      