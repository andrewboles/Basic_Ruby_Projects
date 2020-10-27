require 'pry'

flag_words = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(message, flag_words)
    arr1 = message.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ").sort()
    puts "phrase to check: #{arr1}"
    arr2 = Array.new
    result = Hash.new(0)
    arr1.each do |word| 
      arr2<<flag_words.filter{|element| word==element}
    end
    arr2.delete(" ")
    arr2.each {|match| result[match] += 1}
    puts result
    
end

substrings("Howdy partner, sit down! How's it sit going?", flag_words)