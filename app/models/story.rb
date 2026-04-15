class Story < ApplicationRecord
  has_many :vocabs, dependent: :destroy

  def content_for_display
    display_content = []
    self.content.split('.') do |sentence|
      split_sentence = []
      sentence.split() do |w|
        w == "’n" ? w = "'n" : w
        w.include?(",") ? w = w.gsub(",", "") : w
        word = Word.find_by(name: w)
        vocab = Vocab.find_by(story: self, word: word)
        vocab.nil? ? vocab = w : vocab
        split_sentence << vocab
      end
      display_content << split_sentence
      display_content << ". "
    end
    display_content.flatten
  end

  def create_vocabs # Vocabs should be properly saved, otherwise can't display NB!!
    puts "Fetching vocabs from glosbe. Wait a moment or two..."
    vocabs = []
    count = 1
    self.content.split() do |c|
      puts "Fetching vocab #{count}/#{self.content.size} for this story.\r"
      c == "’n" ? c = "'n" : c
      c.include?("." || ",") ? c = c.gsub("." || ",", "") : c  # TODO all punctuation
      word = Word.find_or_create_by!(name: c, definitions: scrape_word_definitions(c))
      vocabs << Vocab.find_or_create_by!(rating: 0, story_id: self.id, word_id: word.id)
      n = 1
      15.times do
        print "Sleeping between HTTP requests: #{n}/15s\r"
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
    array = html_doc.xpath("//h3").collect(&:text) # TODO also get example sentence
    definitions[:glosbe] = array.map { |w| w.gsub(/\n/, "") }
    return definitions
  end

end
