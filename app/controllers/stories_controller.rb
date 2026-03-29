class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @vocabs
  end

  private

  word_id = 1

  def vocabs_from_story(word_id)
    @story.content.split() do |c|
      vocabs << Vocab.new(rating: 0, story_id: @story.id, word_id: word_id)
    end
    return vocabs
  end
end
