class Story < ApplicationRecord
  def add_vocab(word)
    Vocab.new(rating: 0, story_id: self.id, word_id: word.id)
  end

  def create_vocab()
    # takes a story and returns an array of vocabs
    #story.split
      # get definition of each vocab sand Word.save
    # create Vocab
    # push into array
    vocabs = []
    self.content.split() do |c|
      word = Word.create_or_find_by!(name: c, meaning: scrape_word_definitions)
      # vocabs << Vocab.create(rating: 0, story_id: @story.id, word_id: word.id)
    end
    return vocabs
  end

  private

  def scrape_word_definitions(word)
    # return an hash of defs
    word = word
    url = ""

    html_file = URI.parse(url).read
    html_doc = Nokogiri::HTML.parse(html_file)

    html_doc.search().each do |element|
      element.text.strip
    end
  end
end
