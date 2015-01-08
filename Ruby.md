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

[[Example of a decorator]]

[[Playing with iterators]]

[Awesome awesome link about blocks, procs and closures](https://innig.net/software/ruby/closures-in-ruby)

