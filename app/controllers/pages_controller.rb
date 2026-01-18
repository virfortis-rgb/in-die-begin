class PagesController < ApplicationController
  def home
    @stories = Story.all[0..3]
  end
end
