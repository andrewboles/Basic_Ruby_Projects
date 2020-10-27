require 'pry'

def stockpicker(arr)
  finalArr=[]
  buyDay=0;
  sellDay=0;
  arr2=arr.sort()
  maxHash=Hash.new([])
  maxArr=[]
  arr.each_with_index do |price, idx|
    for i in (idx+1)...arr.length
      if(maxHash.include?(price)== true && (arr[i]-arr[idx]>maxHash[price]) )
        maxHash[price]=arr[i]-arr[idx]
      elsif(maxHash.include?(price)== false)
        maxHash[price]=arr[i]-arr[idx]
      end
    end
    maxArr=maxHash.sort_by {|_key, value| value}.reverse
  end
  buyDay=arr.index(maxArr[0][0])
  sellDay=arr.index(maxArr[0][1].to_i + maxArr[0][0].to_i)
  finalArr=[buyDay,sellDay]
  p finalArr
  return finalArr
end 

stockpicker([17,3,6,9,15,8,6,1,10])