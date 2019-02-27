class PigLatinizer

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def piglatinize(word)

    array = word.split("")
    first_letter = array[0]
    second_letter = array[1]
    third_letter = array[2]

    if first_letter.start_with?('a','A','e','E','i','I','o','O','u','U') && array.length == 1
        array.shift
        new_array = array.push(first_letter)
        new_word = new_array.push("w", "a", "y").join("")
        return new_word
        print "conditional 1"
    elsif first_letter.start_with?('s','S') && second_letter.start_with?('p','P') && third_letter.start_with?('r','R')
        array.shift
        array.shift
        array.shift
        new_word = array.push("a", "y").join("")
        # return new_word
        print "conditional 3"
    elsif first_letter.start_with?('B','b','C','c','D','d','F','f', 'G','g', 'H','h') ||
      first_letter.start_with?('J','j','K','k','L','l','M','m', 'N','n','P','p','Q','q') ||
      first_letter.start_with?('R','r','S','s','T','t','V','v','X','x','Z','z') && second_letter.start_with?('a','A','e','E','i','I','o','O','u','U')
        array.shift
        new_array = array.push(first_letter)
        new_word = new_array.push("a", "y").join("")
        return new_word
        print "conditional 2"
    elsif first_letter.start_with?('B','b','C','c','D','d','F','f', 'G','g', 'H','h') ||
      first_letter.start_with?('J','j','K','k','L','l','M','m', 'N','n','P','p','Q','q') ||
      first_letter.start_with?('R','r','S','s','T','t','V','v','X','x','Z','z') && 
      second_letter_letter.start_with?('B','b','C','c','D','d','F','f', 'G','g', 'H','h') ||
      second_letter.start_with?('J','j','K','k','L','l','M','m', 'N','n','P','p','Q','q') ||
      second_letter.start_with?('R','r','S','s','T','t','V','v','X','x','Z','z') &&
      third_letter.start_with?('a','A','e','E','i','I','o','O','u','U')
        array.shift 
        array.shift
        new_array = array.push(first_letter).push(second_letter)
        new_word = new_array.push("a", "y").join("")
        return new_word
        print "4"
    elsif first_letter.start_with?('a','A','e','E','i','I','o','O','u','U') && second_letter.start_with?('B','b','C','c','D','d','F','f', 'G','g') ||
      second_letter.start_with?('H','h','J','j','K','k','L','l','M','m', 'N','n') || second_letter.start_with?('P','p','Q','q','R','r','S','s','T','t') ||
      second_letter.start_with?('V','v','X','x','Z','z')
      
          new_word = array.push("w", "a", "y").join("")
          #return new_word
          print "conditional 4"
          
    else first_letter.start_with?('B','b','C','c','D','d','F','f', 'G','g','H','h') || first_letter.start_with?('J','j','K','k','L','l','M','m') ||
      first_letter.start_with?('N','n','P','p') || first_letter.start_with?('Q','q','R','r','S','s','T','t','V','v','X','x','Z','z') &&
      second_letter.start_with?('B','b','C','c','D','d','F','f', 'G','g', 'H','h') || second_letter.start_with?('J','j','K','k','L','l','M','m') ||
      second_letter.start_with?('N','n','P','p','Q','q','R','r') || second_letter.start_with?('S','s','T','t','V','v','X','x','Z','z')
        array.shift
        array.shift
        new_array = array.push(first_letter)
        new_array = array.push(second_letter)
        new_word = new_array.push("a", "y").join("")
        # return new_word
        print "conditional 5"
        
      end #if statement
  end #method

end