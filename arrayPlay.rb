fruits = ["apple","orange","melon","banana"]

newArray = Array.new
newArray = Array.new(10) #array of size 3
newArray = Array.new(10,true) #arry of size 3 and default value of true at each index
newArray = Array.new(10, { "sameHashInEachIndex"=>true} ) 
newArray = Array.new(10) { {"sameHashInEachIndex"=>false} }	#create a new object each time by using a block

#newArray.each - iterate over values 
newArray.each_index { |i| newArray[i] = i }


newArray.empty?				#false
newArray.include?(2)		#True

#Accessing Elements
subArray = newArray[2,2]	#from index 2 take 2 elements
subArray = newArray[1..4]	#take from indices 1 to 4

newArray.first
newArray.last

newArray.unshift("newValue")	#add to start
newArray.push("pushedValue")	#add to end
newArray << "sameAsPush"
removedValue = newArray.pop 		#remove from end
removedValue = newArray.shift	#remove From start

newArray.compact 				#remove nil values
newArray.uniq 					#remove duplicate values

#Map is the same as collect
newArray.map { |arrItem| arrItem.to_s + "!" } 	#create a new array from evaluating each index
newArray.map!.with_index { |arrItem, index| ( index + 1 ).to_s + arrItem.to_s  + "!" } 	#create a new array from evaluating each index

#puts(newArray)




#Using the : between value/key will force the hash to be indexed via symbols, regardless if the key is a string
produceWithStringKeys = {'apples'=>1, "oranges"=>2, "melons"=>3, "bananas"=>4}
produceWithHashKeys = {"apples":1, "oranges":2, "melons":3, "bananas":4}

mappedProduce = produceWithStringKeys.map { |key, value| key.upcase  }
puts mappedProduce
#Passing a block to Array.new can populate every entry with a new object
arrayWithHashes = Array.new(5) { Hash.new }

newArray.index('2')	