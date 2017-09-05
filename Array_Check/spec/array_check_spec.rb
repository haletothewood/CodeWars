require 'array_check'

describe 'array_check' do
	it  'checks array' do
		expect(arrCheck(([[1,2,3], [4,5,6]]))).to eq true
	end

end

