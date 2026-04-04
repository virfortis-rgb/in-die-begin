class Story < ApplicationRecord
  has_many :vocabs, dependent: :destroy

  def create_vocabs_array
    vocabs = []
    self.content.split() do |c|
      c = "’n" ? c = "'n" : c
      word = Word.find_or_create_by!(name: c, definitions: scrape_word_definitions(c))
      vocabs << Vocab.find_or_create_by!(rating: 0, story_id: self.id, word_id: word.id)
    end
    return vocabs
  end

  private

  def scrape_word_definitions(afrikaans_word)
    definitions = {
      glosbe: []
    }
    url = "https://en.glosbe.com/af/en/#{afrikaans_word}"
    html_file = URI.parse(url).read
    html_doc = Nokogiri::HTML.parse(html_file)
    array = html_doc.xpath("//h3").collect(&:text)
    definitions[:glosbe] = array.map { |w| w.gsub(/\n/, "") }
    return definitions
  end

end
