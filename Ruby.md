```ruby
#to get a random record from an Active Record
  <% major = Story.offset(rand(Story.count)).first.major %>
```

```ruby
# given a hash representing a bunch of string mappings
# i.e. { 'string_a' => 'string_b' }
# this wee beauty will do the mappings for you

re = Regexp.union(mappings.keys)
array_of_string_to_replace_over.each do |string|
  string.gsub(re, mappings)
end
```


```ruby
  #case statements in erb are a bit weird
  <% case @variable
     when 'this' %>
     it's this
  <% when 'that' %>
     it's that
  <% end %>
```

```ruby
  #serve current direction through webrick
  ruby -run -e httpd . -p 5000
```
 http://matt.weppler.me/2013/07/19/lets-build-a-sinatra-app.html

 [[http://blog.codeclimate.com/blog/2013/08/07/deciphering-ruby-code-metrics|Ruby Code Metrics]]

[[https://gist.github.com/nellshamrell/6031738|Link to gist on Regex links]]

http://andycroll.com/ruby/benchmarking-each_with_object-against-inject-when-building-hashes-from-arrays

Nice example of a decorator
```ruby
class ItemDecorator
  def self.build_collection(items)
    items.map { |item| new(item) }
  end

  def initialize(item)
    @item = item
  end

  def method_missing(method_name, *args, &block)
    @item.send(method_name, *args, &block)
  end

  def respond_to_missing?(method_name, include_private = false)
    @item.respond_to?(method_name, include_private) || super
  end
end
```
http://www.sitepoint.com/understanding-object-model/

https://github.com/cypriss/mutations

[[https://hakiri.io/facets|Gemfile.lock checker]]



```ruby
# basic DSL example
class Game
  attr_reader :name

  def initialize(name)
    @name = name
    @year = nil
    @system = nil
  end

  def year(value)
  @year = value
  end

  def system(value)
  @system = value
  end

  def print_details
    puts "#{@name} - #{@year} (#{@system})"
  end

  def play
  end

  def capture_screenshot
  end
end

class Library
  def initialize
    @games = []
  end

  def add_game(game)
    @games << game
  end

  def find_by_name(name)
    @games.detect { |game| game.name == name }
  end
end


LIBRARY = Library.new

def add_game(name, &block)
  game = Game.new(name)
  game.instance_eval(&block)
  LIBRARY.add_game(game)
end

def with_game(name, &block)
  game = LIBRARY.find_by_name(name)
  game.instance_eval(&block)
end

add_game "Bomber Raid" do
  system 'Sega Megadrive'
  year 1987
end

with_game "Bomber Raid" do
  print_details
  play
  capture_screenshot
end
```

Convert a string representing UTF-8

On the vodafone modem I had a "string" of text like this:
```ruby
message = "0059006F007500720020006300720065006400690074002000680061007300200067006F006E0065002000620065006C006F00770020003500200064006F006C006C006100720073002E00200049006600200079006F00750020006800610076006500200061006E0020004100640064002D004F006E0020006F007200200042006F006E0075007300200079006F007500720020007200650073006F00750072006300650073002000770069006C006C00200077006F0072006B00200075006E00740069006C0020006500780068006100750073007400650064002E00200054006F00200074006F00700020007500700020006E006F007700200076006900730069007400200076006F006400610066006F006E0065002E0063006F002E006E007A002F0074006F007000750070"

# to convert it into a readable string, you need to convert it to hex and then "Pack it"
message.scan(/.{4}|.+/).map { |a| [a.to_i(16)].pack('U') } 

# should pop out the other end as  "Your credit has gone below 5 dollars. If you have an Add-On or Bonus your resources will work until exhausted. To top up now visit vodafone.co.nz/topup" 

```

```ruby
# if you want to see the bytecode of a method..
insns = RubyVM::InstructionSequence.of Foo.new.method(:foo)
puts insns.disasm
```

* [garbage collection](http://tmm1.net/ruby21-oobgc/)
* [[Example of a decorator]]
* [[Playing with iterators]]
* [Awesome awesome link about blocks, procs and closures](https://innig.net/software/ruby/closures-in-ruby)
* https://sourcemaking.com/refactoring/bad-smells-in-code
* [interesting looking article on signals](www.sitepoint.com/license-to-sigkill/?utm_source=rubyweekly&utm_medium=email)
* [Really good Ruby weekly article](http://rubyweekly.com/issues/255)
* [[elegant exercisms]]

#### Ruby conferences
* http://rubyconferences.org/ 
* http://lanyrd.com/topics/ruby/

```ruby

require 'pathname'
LINK_REGEX = /\((?<link>[^)]+)/

files = Dir.glob(Pathname("**/*.md"))

files.each do |file|
  contents = File.read(file)
  matches = []
  contents.scan(LINK_REGEX) { matches << $~ }

  puts "File: #{file}"
  matches.each { |match| puts match["link"] }

  puts "\n\n"
end
```

[pattern matching slidedeck](https://speakerdeck.com/k_tsj/pattern-matching-new-feature-in-ruby-2-dot-7?slide=35)
