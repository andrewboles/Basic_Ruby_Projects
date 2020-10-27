require 'pry'
$downAlph=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','x']

$upAlph=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

$upAlphRev=$upAlph.reverse()
$downAlphRev=$downAlph.reverse()
$alphIndex = 0;
$moveIndex = 0;

def caesar_cipher(str,shift)
  puts "Starting"
    str.length.times do |i|
      # p i
      if(str[i]=="!"||str[i]==" "||str[i]=="."||str[i]=="?")
        # p "not a letter"
        next
      else
        # binding.pry
        if(str[i].upcase==str[i] && shift>0)
          $alphIndex=$upAlph.index(str[i])
          # binding.pry
          $moveIndex=($alphIndex+shift)%26
          str[i]=$upAlph[$moveIndex]
        elsif(str[i].upcase == str[i] && shift<0)
          $alphIndex=$upAlphRev.index(str[i])
          $moveIndex=($alphIndex-shift)%26
          str[i]=$upAlphRev[$moveIndex]
        elsif(str[i].upcase != str[i] && shift>0)
          $alphIndex=$downAlph.index(str[i])
          $moveIndex=($alphIndex+shift)%26
          str[i]=$downAlph[$moveIndex]
        else
          $alphIndex=$downAlphRev.index(str[i])
          $moveIndex=($alphIndex-shift)%26
          str[i]=$downAlphRev[$moveIndex]
        end
      end
    end
    # binding.pry
    str
end

p caesar_cipher("What a string!", -5)
