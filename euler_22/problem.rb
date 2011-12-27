OFFSET_OF_UPPERCASE_ALPHABET = 64

def parse(input)
  input.gsub!('"','')
  input.split ','
end

def alphabetize(array)
  array.sort
end

def value_of_name(name)
  name_sum = 0
  name.each_char {|c| name_sum += c[0] - OFFSET_OF_UPPERCASE_ALPHABET}
  name_sum
end

def score_names(names)
  ret = 0
  names.each_index do |i|
    ret += (i + 1) * value_of_name(names[i])
  end
  ret
end

data = IO.read("names.txt")
print "#{score_names(alphabetize(parse(data)))}\n"