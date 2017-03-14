def ReverseString(str)
  length = str.length - 1
  i      = 0
  k      = ""

  while(i<= length)
    k += str[i-1]

    i += 1
  end

  puts k
end

puts ReverseString('rubyonrails')

