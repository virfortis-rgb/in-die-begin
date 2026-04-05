class Story < ApplicationRecord
  has_many :vocabs, dependent: :destroy

  def create_vocabs
    puts "fetching vocabs from glosbe. Wait a moment or two..."
    vocabs = []
    self.content.split() do |c|
      c == "’n" ? c = "'n" : c
      c.include?(".\n") ? c.gsub("./n", "") : c
      word = Word.find_or_create_by!(name: c, definitions: scrape_word_definitions(c))
      vocabs << Vocab.find_or_create_by!(rating: 0, story_id: self.id, word_id: word.id)
      n = 1
      30.times do
        print "#{n}/30\r"
        $stdout.flush
        n += 1
        sleep(1)
      end
    end
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
