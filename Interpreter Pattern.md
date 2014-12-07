Interpreter Pattern.

When you invent a new language just for specifying problem domain solutions
(e.g. SQL)

Parse in the code into an AST and then execute in the contaxt of your program itself.

Good for well bounded problem domains (e.g. query or configuration)

Pretty much it's an external DSL, where you have a parser to parse your language, and a
interpreter to interpret it.  But the DSL is in it's own language, whereas the parser
and interpreter are in a different languge (in our case, ruby)
