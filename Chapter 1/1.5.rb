=begin
  Cracking The Coding Interview
  Chapter 1, Problem 1.5, page 73
  Implement a method to perform a basic string compression
  using the counts of repeated characters. For example, aabcccccaaa
  would be a2b1c5a3. If the "compressed" string would not become
  smaller than the original string, your method would return the
  original string. You can assume the string only has only upper
  and lower case (a-z).
=end

#if we want to generate a random string of random length
#str = (0...rand(26)).map { (65 + rand(26)).chr }.join

str = 'aabcccccaaa'

def compress_string str
  arr_str = str.split("")
  index = 0
  count = 0
  last_char = arr_str[0]
  new_str = ""
  arr_str.each do |e|
    if e == last_char
      count += 1
    else
      new_str += last_char + "" + count.to_s
      last_char = arr_str[index]
      count = 1
    end
    index += 1
  end
  compressed_str = new_str + last_char + count.to_s
  if compressed_str.length < str.length
    p compressed_str
  else
    p str
  end
end

compress_string str
