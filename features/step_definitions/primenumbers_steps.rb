require './lib/PrimeMultiplier'

prime = PrimeMultiplier.new

When(/^the user runs the program without any parameters$/) do
  prime.get_first_ten
  puts prime.print_all
end

Then(/^the output should contain the multiplication$/) do
  puts prime.instance_variable_get(:@output).each_index.to_s { |row| prime.print_all.include? row}
end

When(/^the user runs the program with position: "([^"]*)"$/) do |arg|
  prime.find_prime(arg.to_s.to_i)
  puts prime.print_all

end

Then(/^the user should be displayed with a table containing the multiplication$/) do
  prime.instance_variable_get(:@output).to_s.include? (prime.instance_variable_get(:@left_col) * prime.instance_variable_get(:@top_line)).to_s
end