class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @vocabs = vocabs_from_story
  end

  private


  def vocabs_from_story
    vocabs = []
    @story.content.split() do |c|
      word = Word.create(name: c, meaning: c)
      vocabs << Vocab.create(rating: 0, story_id: @story.id, word_id: word.id)
    end
    return vocabs
  end
end
