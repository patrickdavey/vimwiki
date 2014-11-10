## When to use ##

If you want to perform an action when something changes / is called
on a second object.  You want to clearly separate the two objects
as the behaviour is not something which should all be encapsulated
in the one object.

**You want to clearly separate the source of the news from the consumer**

e.g. you update a spreadsheet cell.  It should also trigger formatting
changes etc., but that should not be defined in the update method itself.

```ruby

class Employee
  def initialize(a,b)
    @a = a
    @b = b
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def update
    #make some change
    @observers.each { |observer| observer.update(self) }
  end
end
```

Ruby also has the `Observable` library

###watch out###
* watch out for calling the observer too frequently.  Make sure *something has changed*
* watch out for inconsistent state (e.g. salary and title changing, and different observers for each one.


ActiveRecord uses this for after_create etc.  Also with convention over configuration, ActiveRecord knows
that ModelObserver is out there to observe Models... should play with this.
