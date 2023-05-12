def get_most_common_letter(text)
    counter = Hash.new(0)
    #p counter
    text.chars.each do |char|
        #p "#{char}"
      counter[char] += 1
      #p counter
    end
     #p counter.to_a
     p counter.to_a.sort_by { |k, v| v }
     #p counter
  end

print get_most_common_letter("Hello there")