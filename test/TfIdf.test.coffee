should = require 'should'

{ TfIdf } = require '../index'


describe 'TfIdf', ->
  tfIdf = new TfIdf()

  describe '.train(...)', ->
    it 'should be done', ->
      tfIdf.train [
        'a'
        'b'
        'c'
        'd'
        'a'
        'b'
        'c'
      ]

  describe '.getWordsLength(...)', ->
    it 'should be done', ->
      tfIdf.getWordsLength()

  describe '.extractKeywords(...)', ->
    it 'should be done', ->
      tfIdf.extractKeywords [
        'a'
        'b'
        'c'
        'd'
        'e'
      ]
