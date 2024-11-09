def caesar_cipher(message, shift)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    # puts alphabet.length # 26
    encrypted_message = ""
    message.each_char do |char|
        case char
        when 'A'..'Z'
            base = 'A'.ord # ASCII code for A 
            # by substracting the base, then applying the modulo and then adding the base back in, we can treat chars as if they used an ASCII code from 0-25 (in reality it's 65-90)
            shifted_letter = ((char.ord - base + shift) % 26 + base).chr #alphabet[(alphabet.index(letter) + shift) % 26]
            encrypted_message += shifted_letter
        when 'a'..'z'
            base = 'a'.ord # ASCII code for a 
            shifted_letter = ((char.ord - base + shift) % 26 + base).chr #alphabet[(alphabet.index(letter) + shift) % 26]
            encrypted_message += shifted_letter
        else
            encrypted_message += char
        end 
    end           
    return encrypted_message
end

puts caesar_cipher("What a STRING!", 5)
# "Bmfy f xywnsl!"