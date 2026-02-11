class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]

  def home
    @stories = Story.all[0..3]
  end

  def about
  end
end
