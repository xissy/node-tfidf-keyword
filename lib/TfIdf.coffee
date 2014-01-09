
class TfIdf
  constructor: ->
    @wordMap = {}
    @sortedWords = null


  clear: ->
    @wordMap = {}
    @sortedWords = null


  train: (words) ->
    for word in words
      if not @wordMap[word]?
        @wordMap[word] =
          count: 0
          rank: null
      @wordMap[word].count++

    @sortedWords = null


  extractKeywords: (words, options) ->
    if not options?
      options = {}

    if not @sortedWords?
      @sortedWords = []
      
      for word, v of @wordMap
        @sortedWords.push
          word: word
          count: v.count

      @sortedWords.sort (a, b) -> b.count - a.count

      for sortedWord, index in @sortedWords
        @wordMap[sortedWord.word].rank = index

    rankedWords = []
    for word in words
      rankedWords.push
        word: word
        count: @wordMap[word]?.count
        rank: @wordMap[word]?.rank

    rankedWords



module.exports = TfIdf
