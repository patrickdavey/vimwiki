```ruby
class Sentence
  include Enumerable

  def initialize(sentence)
    @sentence = sentence
  end

  def each
    words = sentence.split
    words.each do |word|
      yield word
    end
  end

  def bychar
    sentence.chars do |char|
      yield char
    end
  end

  private
  attr_reader :sentence
end

mysentence = Sentence.new("this is my awesome awesome sentence")
mysentence.each do |word|
  puts word
end

puts mysentence.include? 'awesome'

enum = mysentence.enum_for(:bychar)
puts enum.map(&:to_s).join('')
puts enum.include? 'm'
```
