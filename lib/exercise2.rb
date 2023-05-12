def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  puts "This is what the cipher does #{cipher}"
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
  print "This is what the ciphertext_chars does #{ciphertext_chars}"
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end

# Intended output:
#
encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

