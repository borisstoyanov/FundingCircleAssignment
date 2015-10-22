require 'optparse'
require './lib/PrimeMultiplier'


options = {:position => nil}

parser = OptionParser.new do|opts|
  opts.banner = 'Usage: primes.rb [options]'

  opts.on('-p', '--position position', 'Displays prime number by given position') do |pos|
    options[:position] = pos
  end

  opts.on('-h', '--help', 'Displays Help') do
    puts opts
    exit
  end
end

parser.parse!
prime = PrimeMultiplier.new


if (options[:position] == nil) then
  prime.get_first_ten
else
  prime.find_prime(options[:position].to_s.to_i)
end

puts prime.print_all

