require '../lib/array_check'

describe 'array_check' do
	it  'checks array' do
		expect(arrCheck(([[1,2,3], [4,5,6]]))).to eq true
	end

	it  'checks array' do
		expect(arrCheck(([1,2,3,[4,5,6]]))).to eq false
	end

end

describe 'array_check2' do
	it 'checks array' do
		expect(arrCheck2(([[1,2,3], [4,5,6]]))).to eq true
	end

	it  'checks array' do
		expect(arrCheck2(([1,2,3,[4,5,6]]))).to eq false
	end
end
