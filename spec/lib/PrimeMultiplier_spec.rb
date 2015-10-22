require 'rspec'
require './lib/PrimeMultiplier'

describe 'MyPrimeMultiplier' do
  mult = PrimeMultiplier.new

  it 'should find prime by position' do
    mult.find_prime(3)
    mult.output.should include('25')

  end

  it 'should get first ten' do
    mult.get_first_ten
    mult.output.length == 10

  end



end