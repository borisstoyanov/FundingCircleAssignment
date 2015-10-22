require './spec/spec_helper'
require './lib/MyPrime'



class MyPrime
  @primeList = Array.new

  def self.first_primes(n)

    i = 2
    until @primeList.length == n
      begin
        if prime?(i)
          @primeList.push(i)
        end
        i+=1
      end
    end
    return @primeList
  end

  def self.prime?(n)


    return n == 2 if n % 2 == 0

    (3..Math.sqrt(n)).step(2) do |x|
      return false if n % x == 0
    end

    true
  end

  def self.find_by_position(i)
    @primeList = first_primes(i)
    return @primeList.last
  end
end