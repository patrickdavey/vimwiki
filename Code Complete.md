in fairness, I just skimmed over it and need to read it again

## Selected quotes from Code Complete, Second Edition

> a program that you can safely ignore while working on any one section of
> code. Classes are the primary tool for accomplishing that objective.

> Treat yourself to the highest possible level of abstraction.

> That argument fails the main test for inheritance, which is, "Is inheritance
> used only for "is a" relationships?" To inherit from ListContainer would
> mean that EmployeeCensus "is a" ListContainer, which obviously isn't true.
> If the abstraction of the EmployeeCensus object is that it can be searched
> or sorted, that should be incorporated as an explicit, consistent part
> of the class interface.

> related—a class interface that presents a good abstraction usually has
> strong cohesion. Classes with strong cohesion tend to present good abstractions,
> although that relationship is not as strong.

> Minimize accessibility of classes and members. Avoid friend classes, because
> they're tightly coupled. Make data private rather than protected in a
> base class to make derived classes less tightly coupled to the base class.
> Avoid exposing member data in a class's public interface. Be wary of semantic
> violations of encapsulation. Observe the "Law of Demeter" (discussed in
> Design and Implementation Issues of this chapter).

> Containment is the simple idea that a class contains a primitive data element
> or object.

> If inheritance is a chain saw, multiple inheritance is a 1950s-era chain
> saw with no blade guard, no automatic shutoff, and a finicky engine.

> inheritance tends to work against the primary technical imperative you
> have as a programmer, which is to manage complexity.
