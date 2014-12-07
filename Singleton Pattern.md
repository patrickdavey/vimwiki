Singletons :  One Object, Global Access

Basically, you make the class initialize a class variable (once)
and then call that.  You nuke the new method (so you can't initialize the class)
and that's that.  Use the Singleston module to do the heavy lifting

```ruby
require 'singleton'

class MyLogger
  include 'singleton'

end

```

Can lead to coupling (everything has access to the global singleton)
