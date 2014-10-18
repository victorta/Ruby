numbers = 1000000.times.map{ 20 + Random.rand(100) } 

def mergesort(list)
  if list.size <= 1
  	return list
  end
  mid = list.size / 2
  left  = list[0, mid]
  right = list[mid, list.size-mid]
  merge(mergesort(left), mergesort(right))
end
 
def merge(left, right)
  sorted = []
  until left.empty? or right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

numbers = mergesort(numbers)

$k = 1
while $k < numbers.length
	if numbers[$k] < numbers[$k-1]
		puts "You have failed!"
	end
	$k += 1
end
puts "You have passed!"