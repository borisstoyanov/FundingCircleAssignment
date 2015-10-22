require 'rspec'
require './lib/MyPrime'
describe MyPrime do


  it 'should do find first primes by given index' do
    MyPrime.first_primes(5).should == Array[2, 3, 5, 7, 11]
  end

  it 'should tell if given number is prime' do
    MyPrime.prime?(3).should == true
  end

  it 'should tell if given number is not prime' do
    MyPrime.prime?(4).should == false
  end

end