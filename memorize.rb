require_relative 'multilinguist'
require "pry"

class Memorize < Multilinguist

  @@quotes = [
    "Do not take life too seriously. You will never get out of it alive. -- Elbert Hubbard",
    "To succeed in life, you need three things: a wishbone, a backbone and a funny bone. -- Reba McEntire",
    "No man has a good enough memory to be a successful liar. -- Abraham Lincoln"
  ]

  def initialize
    @quotes = []
    super
  end

  def quotes
    @quotes
  end

  def add_random_quote
    @quotes << @@quotes.sample
  end

  def add_quote
    print "Enter a new quote!"
    user_quote = gets.chomp
    @quotes << user_quote
  end

  def say_quote
    # rand_quote =
    say_in_local_language(@quotes.sample)
  end

end

me = Memorize.new
binding.pry
