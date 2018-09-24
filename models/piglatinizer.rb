require 'pry'
class PigLatinizer

  # def initialize
  #
  # end

  def piglatinize(phrase)
    words = phrase.split(" ")
    phr = words.map do |word|
      w = word.split('')
      if w.first == (/[aeiouAEIOU]/)
        w << "way"
      else
        w.each do |char|

          finished_w = []
          if char != (/[aeiouAEIOU]/)
            char << finished_w
          else
            finished_w << 'ay'
            return finished_w.join('')
          end
        end
      end
      w.join
    end
    return phr.join(" ")
  end
end
