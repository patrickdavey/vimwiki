Used for adding an enhancemnt to an existing object.

![Decorator](http://yuml.me/3eba8b9b)

`Forwardable` module is the best thing here, be explicit about the
methods you want to forward, rather than delegating everything.

```ruby

require 'forwardable`

class SomethingDecorator
  extend Forwardable

  def delegators :@real_something, :do_this, :do_that, :do_other

  def initialize(real_something)
    @real_something = real_something
  end
end

```

Also can just open up the class and use `alias` to alias the old
method and then call out to is
