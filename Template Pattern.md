When you want to vary part of an algorithm then the template pattern
might be for you.

You inherit from a base class which provides default behaviour
or simply delegate all methods to the child object (i.e. effectively
you're creating an virtual interface (if Ruby had them).  Simply
provide stub methods with `raise UnimplmentedMethod` or equivalent.

The template method (i.e. the shared method which calls out to
subclassed methods) provides the overall procecessing.

**disadvantage** it's inheritence based.
