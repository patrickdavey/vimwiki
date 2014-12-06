You give an object back which conforms to the expected interface, but is infact
a different object

![Proxy Pattern](http://yuml.me/19ff7081)

Useful, say, for authentication.  You allow your objects to call `add_balance` or
whatever, but these first perform an authentication.

```ruby

class MyProxy
  def initialize(real_subject)
    @subject = real_subject
  end

  def method_missing(name, *args)
    check_access
    @subject.call(name, *args)
  end

  def check_access
    #some check
  end
end

```
