class PigLatinizer

    def piglatinize(str)
        str.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
    end

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end
    
    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            x = word.slice(vowel_index..word.length)
            x + consonants + "ay"
        end
    end
end