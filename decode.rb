def decode_alphabet(alphabet)
    morse_codes = {
        'A' => '.-',
        'B' => '-...',
        'C' => '-.-.',
        'D' => '-..',
        'E' => '.',
        'F' => '..-.',
        'G' => '--.',
        'H' => '....',
        'I' => '..',
        'J' => '.---',
        'K' => '-.-',
        'L' => '.-..',
        'M' => '--',
        'N' => '-.',
        'O' => '---',
        'P' => '.--.',
        'Q' => '--.-',
        'R' => '.-.',
        'S' => '...',
        'T' => '-',
        'U' => '..-',
        'V' => '...-',
        'W' => '.--',
        'X' => '-..-',
        'Y' => '-.--',
        'Z' => '--..',
    }
    morse_codes.key(alphabet)
end

def decode_word(word)
  array = word.split
  wordarray = []
  array.each { |letter| wordarray.push(decode_alphabet(letter)) }
  wordarray.join
end

def decode_sentence(msg)
  msgarray = msg.split('   ')
  sentencearray = []
  msgarray.each { |word| sentencearray.push(decode_word(word)) }
  sentencearray.join(' ')
end

puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
