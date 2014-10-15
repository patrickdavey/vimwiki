```ruby
#to get a random record from an Active Record
  <% major = Story.offset(rand(Story.count)).first.major %>
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
# useful for printing out SQL in rails2 console
  ActiveRecord::Base.connection.instance_variable_set :@logger, Logger.new(STDOUT)
```