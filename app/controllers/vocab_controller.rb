class VocabController < ApplicationController

  def new
    @vocab = Vocab.new
  end
end
