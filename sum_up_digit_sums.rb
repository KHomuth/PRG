class Integer
  def digit_sum
	self.to_s.each_char.map {|c| c.to_i }.reduce(:+)
  end
end

class Array
  def sum
	self.map {|c| c.to_i }.reduce(:+)
  end
  
  def sum_up_digit_sums
	self.map {|c| c.digit_sum }.reduce(:+)
  end
end

puts [11,22,33,44].to_s
puts
puts 'SUM:'
puts [11,22,33,44].sum
puts
puts 'SUM_UP_DIGIT_SUMS'
puts [11,22,33,44].sum_up_digit_sums

=begin
aussagekräftige Testaufrufe
	[11, 22, 33, 44]

	SUM:
	110

	SUM_UP_DIGIT_SUMS
	20
=end
