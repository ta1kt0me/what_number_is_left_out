require './lib/search_left_out'

begin
  left_out_num = File.open('./left_out_num.txt').read.chomp.to_i
  input_nums = (1..10000).to_a.shuffle
  input_nums.delete(left_out_num)

  puts SearchLeftOut.new.search_left_out(input_nums)
rescue => e
  puts "#{e.message}"
  puts 'Set Number 1 to 10000 in left_out_num.txt. ex: 1234'
end
