require './lib/MyPrime'

class PrimeMultiplier
  attr_reader :top_line, :left_col, :output

  def find_prime(i)
    @top_line = MyPrime.find_by_position(i.to_s.to_i)
    @left_col = MyPrime.find_by_position(i.to_s.to_i)
    @output = '  !' + @top_line.to_s + "\n----\n" + @left_col.to_s + '! ' + (@top_line * @left_col).to_s

  end

  def get_first_ten
    @top_line = MyPrime.first_primes(10)
    @left_col = MyPrime.first_primes(10)
    @output = @left_col.reduce([]) do |output, multiplier|
      output << @top_line.map { |value| multiplier * value }
    end
  end

  def left_column_width
    if (@left_col.is_a? Integer) then
      return 1
    else
      @left_col.max.to_s.length
    end

  end

  def column_widths
    @output.transpose.map {|column| column.max.to_s.length }
  end

  def print_value(contents)
    string = ''
    if (@top_line.is_a? Integer) then
      string += contents.to_s.rjust(1)
    else
    contents.each_with_index do |value, index|
      string += value.to_s.rjust(column_widths[index] + 1)
      end
    end
    string
  end

  def print_line(row_number)
    @left_col[row_number].to_s.rjust(left_column_width) + ' !' + print_value(@output[row_number])
  end

  def print_all
    lines = [print_top_line, print_divider_line]
    (@left_col.is_a? Integer) ?
        lines << @left_col.to_s + '! ' + (@left_col * @top_line).to_s:
        @left_col.each_with_index { |multiplier, row| lines << print_line(row) }
    lines.join("\n")
  end

  def print_top_line
    ''.rjust(left_column_width) + ' !' + print_value(@top_line)
  end

  def print_divider_line
    print_top_line.gsub(/./, '-')
  end

end
