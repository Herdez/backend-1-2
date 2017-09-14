#method to sorting numbers =begin

def sort_numbers(numbers)
  number_min = numbers[0].to_i
  sort_numbers = []
  numbers.each do |number|
  	p number.to_i
  	p number_min
  	if number.to_i < number_min
  		number_min = number.to_i
  		sort_numbers << number.to_i
  	else
  		sort_numbers << number.to_i
  	end
  end
  p sort_numbers
end


#method to get date
def get_date
	p hour_date = Time.now.strftime("%d-%m-%Y")
	file_name = File.open("#{hour_date}.txt", "w") {|f| f.write("334,310") }
	p files = Dir["*.txt"]
end

#method to read the file
def read_file(name)
	File.open(name[0]).each do |line|
	  line.each_line do |data|
	    p number = data.split(",")
	    #method to sort
      sort_numbers(number)
	  end
	end
end

#driven code
read_file(get_date)


