numbers = 10000.times.map{ 20 + Random.rand(100) } 
$i = 0
while $i < numbers.length
	$j = 1
	while $j < numbers.length
		if numbers[$j] < numbers[$j-1]
			savedNumber = numbers[$j-1]
			numbers[$j-1] = numbers[$j]
			numbers[$j] = savedNumber
		end
		$j += 1
	end
	$i += 1
end

$k = 1
while $k < numbers.length
	if numbers[$k] < numbers[$k-1]
		puts "You have failed!"
	end
	$k += 1
end
puts "You have passed!"