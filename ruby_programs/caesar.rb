def caesar_cipher(str,shift)
    alpha_arr=Array.new
    for i in 97..122
      alpha_arr.push(i.chr)
    end
    op_arr=str.split("").map do |letter|
      if alpha_arr.include?letter.downcase #normal shift
        if alpha_arr.index(letter.downcase)+shift<26
          if letter==letter.downcase
            alpha_arr[alpha_arr.index(letter.downcase)+shift]
          else
            alpha_arr[alpha_arr.index(letter.downcase)+shift].upcase
          end
        else #wrap around
          if letter==letter.downcase
            alpha_arr[alpha_arr.index(letter.downcase)+shift-26]
          else
            alpha_arr[alpha_arr.index(letter.downcase)+shift-26].upcase
          end
        end
      else
        letter #punctuations
      end
    end
    return op_arr.join("")
  end
    
  