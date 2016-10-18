# Homework1.

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

# Part 1
# http://ruby-doc.org/core-2.2.0/Regexp.html
def validate_email?(email)
  # YOUR CODE HERE
  valido = email =~ VALID_EMAIL_REGEX
  !valido.nil? ? true : false
end

def is_palindrome?(phrase)
  # YOUR CODE HERE
  return false if phrase.empty?
  arr_phrase = phrase.downcase.scan(/\w/)
  arr_phrase == arr_phrase.reverse
end

# Part 2
def max_sum_of_2(arr1, arr2)
  # YOUR CODE HERE
  sum1 = 0
  arr1.each{|x| sum1 += x}
  sum2 = 0
  arr2.each{|x| sum2 += x}
  sum2 if sum2 > sum1
  sum1 if sum1 > sum2
  if sum1 == sum2
    puts "sums are equal"
    return 0
  end
end

def word_frequency(words)
  # YOUR CODE HERE
  freq = Hash.new(0)
  words.each{|x| freq[x] += 1}
  freq.sort_by {|x,y| y}
  freq.reverse!
  freq.each{|x,y| 
    return x 
    break
    }
end