require 'longest_pal'

describe 'longest_palindrome' do
	it 'finds longest palindrome' do
		expect(longest_palindrome("afghryuuyshjfds")).to eq 4
	end

	it 'finds longest palindrome' do
		expect(longest_palindrome("afGhryuKEkuYshjfDSFs")).to eq 7
	end

	it 'finds longest palindrome' do
		expect(longest_palindrome("")).to eq 0
	end

end