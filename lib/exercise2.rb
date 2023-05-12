def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    #puts "char is #{char}"
    (65 + cipher.find_index(char).to_i).chr
  end
  return ciphertext_chars.join
  #print "This is what the ciphertext_chars does #{ciphertext_chars}"
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # puts "This is what the cipher does #{cipher}"
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
    # puts "This is what char does here #{char}"
  end
  return plaintext_chars.join
end

# Intended output:
#
puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

# print encode("theswiftfoxjumpedoverthelazydog", "secretkey")

