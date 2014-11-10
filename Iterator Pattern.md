Provides a way to access the elements of an aggregate
object sequentially without exposing the underlying
representation.

External Iterator - e.g. Java:
`for (Iterator i = list.iterator(); i.hasNext()} { }`

Nice thing about External iterators is that the client
is driving.

In Ruby, we use `Enumerable`
elements to be enumerated over must define `<=>`
define `each` on class to be iterated over.

Q: What happens if the object changes that you're iterating over?
A: Maybe take a shallow copy and work on that.

```ruby

class Account
  attr_accessor :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def <=>(other)
    balance <=> other.balance
  end
end

class Portfolio
  include Enumerable

  def initialize()
    @accounts = []
  end

  def each(&block)
    @accounts.each(&block)
  end

  def add_account(account)
    @account << account
  end
end
```
