@morse_code = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..',
  ' ' => ' ',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  '0' => '-----'
}

def decode_char(character)
  @morse_character = @morse_code.invert[character]
  return @morse_character.upcase
end

def decode_word(word)
  split_characters = word.split(' ')
  result = ''
  split_characters.each do |value| 
    result.concat(decode_char(value))
  end
  return result
end

def decode_message(string)
  split_string = string.split('   ')
  result = ''
  split_string.each do |value| 
    result.concat(decode_word(value))
    if value != split_string.last 
      result.concat(' ')
    end
  end
  return result
end