require_relative 'multilinguist'
# require "pry"

class MathGenius < Multilinguist

  def initialize
    super
  end

  def report_total(array)
    sum = 0
    array.each { |v| sum += v }
    say_in_local_language("The total is #{sum}")
    binding.pry
  end

end

me = MathGenius.new
# binding.pry
