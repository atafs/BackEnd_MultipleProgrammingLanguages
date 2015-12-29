#!/usr/bin/env ruby

#Exemplos:
#[1,3,6,7], 5 ­> 2
#[1,3,5,6], 2 ­> 1
#[1,3,5,6], 7 ­> 4
#[1,3,5,6], 0 ­> 0

#variables
$paragraph = "\n"
$separator = "-----------------------------------"
$nullValue = -1

#variable array: create and print to check what it is there
$array_families = [1, 2, 3, 5, 6, 7]

class Function
	
	#function: create a better look for the output 
	def paragraphAndSeparator
		print $paragraph 
		puts $separator
		print $paragraph 
	end

	#function: using global variables
	def test
		#test: for the existance of the array and its content
		print $paragraph
		puts $separator
		puts "test: the array exists and has values"
		print $array_families 
		paragraphAndSeparator
	end

	#function: print the array with the index as well
	def printArrayWithIndex
		$array_families.each_with_index do |item, index|
  			print "[index: #{index}, value: #{item}], "
		end
		paragraphAndSeparator
	end

	#function: 
	def intPosition(n)
		#

		$array_families.each_with_index do |item, index|
  		
  			#condition: n is smaller than first value or array
  			if n < $array_families.first
  				print "[index: #{$nullValue}]"
  				paragraphAndSeparator
  				return 	

  			#condition: n is bigger the last value
  			elsif n > $array_families.last
				indexPlusOne = $array_families.length 
  				print "[index: #{indexPlusOne}]"
  				paragraphAndSeparator
  				return 	

  			#condition: n does not exist in the array or is equal to a value in it
  			elsif n <= item
  				print "[index: #{index}]"
  				paragraphAndSeparator
  				return 	
  
  			end
		end 
		paragraphAndSeparator
	end
end

#instantiate object and function calls
function = Function.new
function.test
function.printArrayWithIndex

#test all the values
function.intPosition(-2)
function.intPosition(0)
function.intPosition(1)
function.intPosition(2)
function.intPosition(3)
function.intPosition(4)
function.intPosition(5)
function.intPosition(6)
function.intPosition(7)
function.intPosition(8)

$end