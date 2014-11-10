Pull algorithm out into it's own object.  Basically you
send in the object and delegate to it using duck-typing.

The key idea of the Strategy Pattern is to define a family
of objects (the strategies), which all do the same thing (implement
the same methods).  Given that all of the strategy objects
look the same from the outside, the **context** can treat
the strategies like interchangable parts.

In Ruby, can be nice to implement the different strategies
as `proc` objects (nice for one liners).

When to use:  Supply the context with an object
which knows how to perform some variation of a task.

```ruby
# proc based Strategy pattern

class Report
  attr_reader :formatter

  def initialize(&formatter)
    @formatter = formatter #capture the block as a proc
  end

  def output_report
    formatter.call(self)
  end
end

HTML_FORMATTER = lambda do |context|
  puts '<html>'
  puts 'other stuff'
  puts context.title
  puts context.text.each do |line|
    puts line
  end
  puts 'final things'
end

# and then run it with

Report.new(&HTML_FORMATTER)
report.output_report
```


