Dynamically extend your object with whatever you need at runtime. Using things like
`class_eval` and `define_method`, `method_missing`, `respond_to` etc.  Usually you
will need to be doing metaprogramming if you're going to make a properly usable DSL.

e.g. say you wanted to write your own attr_reader


```class Object

def self.readonly_attribute(name)
  code = %Q{
    def #{name)
      @#{name}
    end
  }
  
  class_eval(code)
end


class Awesome
  readonly_attribute :test
  
  def initialize(test)
    @test = test
  end
end
```
