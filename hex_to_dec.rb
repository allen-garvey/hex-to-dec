#translates unsigned hex int in big endian to decimal

hex = ['c','b',5,2,'a','c',2,'d']

total = 0

def hex_to_dec(num)
	if num.instance_of? String
		num.to_i(16)
	else
		num
	end
end


hex.reverse.each_with_index do |bit, i|
	total += hex_to_dec(bit) * 16**i
end


puts total