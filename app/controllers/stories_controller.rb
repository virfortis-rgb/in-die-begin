class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @vocabs = @story.create_vocabs_array
  end

end
