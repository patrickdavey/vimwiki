Used when you have a `Client` which needs to use a specific `TargetInterface` which
your own domain object `Adaptee` does not supply.  In this case, use an adapter
to transform to the desired interface.

In Ruby, either create an adapter class, or just freedom patch the class on the
fly.  All depends on your use case.

![Adapter Pattern](http://yuml.me/843c7b79)

Edit this diagram at: http://yuml.me/edit/843c7b79
