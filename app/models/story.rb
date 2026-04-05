class Story < ApplicationRecord
  has_many :vocabs, dependent: :destroy

  def create_vocabs
    puts "Fetching vocabs from glosbe. Wait a moment or two..."
    vocabs = []
    count = 1
    self.content.split() do |c|
      puts "Fetching vocab #{count}/#{self.content.size} for this story.\r"
      c == "’n" ? c = "'n" : c
      c.include?("." || ",") ? c = c.gsub("." || ",", "") : c
      word = Word.find_or_create_by!(name: c, definitions: scrape_word_definitions(c))
      vocabs << Vocab.find_or_create_by!(rating: 0, story_id: self.id, word_id: word.id)
      n = 1
      30.times do
        print "Sleeping between HTTP requests: #{n}/30s\r"
        $stdout.flush
        n += 1
        sleep(1)
      end
      count += 1
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
