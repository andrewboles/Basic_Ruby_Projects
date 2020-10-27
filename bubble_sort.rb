require 'pry'

def bubble_sort (arr)
  sort_action="yes"
  bridgeValue=0
  while sort_action == "yes" do
    sort_action="no"
    for i in 0...(arr.length-1)
      if(arr[i]>arr[i+1])
        bridgeValue=arr[i]
        arr[i]=arr[i+1]
        arr[i+1]=bridgeValue
        sort_action="yes"
        # puts "Sorting.."
        # puts "new arr: #{arr}"
      end
    end

    break arr if(sort_action=="no")

  end
  return arr


end

p bubble_sort([4,3,78,2,0,2,13,15,16,555,44,1,9,8,77,888,9,8,145,6146435,23,45,67,88])