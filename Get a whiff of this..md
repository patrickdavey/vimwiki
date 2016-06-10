Refactoring - Improving the design of existing code - READ IT!

Every codesmell maps to certain refactorings. See http://www.industriallogic.com/wp-content/uploads/2005/09/smellstorefactorings.pdf

* Smells about things that don't need to be so big.
  * Large Class
  * Long Method
  * Data Clumps (two or more pieces of data which always appear together)
  * Long Parameter List (suggests object)
  * Primitive Obsession (passing a basic thing around (like 6, and you decide what to do with it. Make it a class)
* Smells which suggest misuse
  * Switch Statements (conditionals)
  * Refused Bequest (inheritance problem, child overrides method and throws an error)
  * Alternative Classes w different interfaces
  * Temporary Field (should you have made a method?)
* Smells which suggest making change is hard
  * Divergent Change
  * Shotgun Surgery
  * Parallel Inheritance Hierarchies
* Smalls which suggest could be dispensed with
  * Lazy Class
  * Speculative Generality (YAGNI)
  * Data Class (should have behaviour)
  * Data Clumps
* Smells which suggest bad coupling
  * Feature Envy (send too many messages to collaborator)
  * Inappropriate Intimacy (using private methods)
  * Message Chains (demeter)
  * Middle Man


> I love looking at my code and seeing how bad it is.

> Can you imagine having a job where you're no better at it
> now than you were 5 years ago
