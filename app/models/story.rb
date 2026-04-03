class Story < ApplicationRecord
  def add_vocab(word)
    Vocab.new(rating: 0, story_id: self.id, word_id: word.id)
  end
end
