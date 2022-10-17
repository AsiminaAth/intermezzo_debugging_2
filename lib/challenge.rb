class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      counter = Hash.new(1)
      most_common = nil
      most_common_count = 1
      @text.chars.each do |char|
        next unless is_letter?(char)
        counter[char] += 1      # (counter[char] || 1) + 1
        # binding.irb   
        # char = "i" / most_common_count = 1 / most_common = nil / counter[char] = 2

        if counter[char] > most_common_count
          most_common = char
          # binding.irb
          # most_common = "i" / char  = "i"

          most_common_count = counter[char]
          # binding.irb
          # most_common_count = 2 / counter[char] = 2
        end
      end
      return [most_common_count, most_common]
    end
  
    private
    def is_letter?(letter)
      # binding.irb
      # letter = "D"
      return letter =~ /[a-z]/  # /[a-z]/i
    end
  end
  
  counter = LetterCounter.new("Digital Punk")
  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]