class Story < ApplicationRecord
  def add_vocab(word_id)
    Vocab.new(rating: 0, story_id: self.id, word_id: word_id)
  end
end
