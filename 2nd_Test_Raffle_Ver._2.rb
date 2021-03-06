require 'minitest/autorun'
require_relative '2nd_Raffle_Ver._2.rb'

class Test_Raffle_Function < MiniTest::Test

	def test_off_by_one
		# results = off_by_one
		assert_equal(true, true)
	end

	def test_same_number_returns_false
		winning_num = '2337'
		ticket_num ='2337'
		results = close_but_not_quite(winning_num, ticket_num)
		assert_equal(false, results)
	end

	def test_one_off_returns_true
		winning_num = '1245'
		ticket_num = '2245'
		results = close_but_not_quite(winning_num, ticket_num)
		assert_equal(true, results)
	end
	
	def test_two_off_returns_false
		winning_num = '2247'
		ticket_num = '2357'
		results = close_but_not_quite(winning_num, ticket_num)
		assert_equal(false, results)
	end
end

class Test_Return_Raffle < MiniTest::Test

	def test_return_empty_array
		my_num ='1234'
		win_nums = ['5678', '9999', '5656']
		assert_equal([], returning_function(my_num, win_nums))
	end

	def test_return_array_of_1
		my_num = '1234'
		win_nums = ['3234', '5555', '6789']
		assert_equal(['3234'], returning_function(my_num, win_nums))
	end

	def test_return_array_of_3
		my_num = '5678'
		win_nums = ['1678', '5618', '5578', '5678', '1111']
		assert_equal(['1678', '5618', '5578', '5678', '1111'], returning_function(my_num, win_nums))
	end
end