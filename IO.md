Prototypical language - no such thing as a class, instead you create a new object
by cloning an existing one.

Objects have "slots" - basically a hash.  You assign a new slot with `:=` which will initialize it if it doesn't exist

If an object starts with a Capital letter, then it is a "Type" of object (like a class, but it's not a class OK!) it then gets a "type" slot.  If an object starts with a lowercase letter then it's an instance, and it would get their parent's type slot.

e.g.

```io

    Book := Object clone
    Fiction := Book clone
    Fiction slotNames # returns list(type)
    dune := Fiction clone
    dune slotNames # returns list()
    
```


Lobby
Nice little feature which lists all the named objects

Hash's

    book := Map clone
    book atPut("author", "C.S.Forester")
    book atPut("genre", "Fiction")
    
    you can turn maps into objects.. 
    CSForesterCategory := book asObject
    
    hornblowerAndTheAtropos := CSForesterCategory clone ...
    


