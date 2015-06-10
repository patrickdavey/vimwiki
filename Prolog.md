Fuck me prolog is both amazing and too damn terse for my liking.

Basically you construct a world made out of "facts" and "rules", and then
give Prolog a question and it will give you an answer as best it can.

Really weird declarative language... I admit I struggled quite a bit
with this.. though it's a beautiful thing when it works.  Check this out:

```prolog

different(red, green).
different(red, blue).
different(green, red).
different(green, blue).
different(blue, green).
different(blue, red).

coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
  different(Mississippi, Tennessee),
  different(Mississippi, Alabama),
  different(Alabama, Tennessee),
  different(Alabama, Georgia),
  different(Alabama, Mississippi),
  different(Alabama, Florida),
  different(Georgia, Tennessee),
  different(Georgia, Alabama),
  different(Georgia, Florida).
```

What we've done there is define what *different* means.  red is different from green and blue (etc.)
Then we've defined a rule and we're passing in 5 Unbound (note
the capitalization) variables.  Prolog will then happily go away and find a solution (if one can be found).
In the instance here, prolog will spit back something like:

    ?- coloring(Alabama, Mississippi, Georgia, Tennessee, Florida).

    Alabama = blue
    Florida = green
    Georgia = red
    Mississippi = red
    Tennessee = green

Which frankly, is amazing.  Anyway, ends up writing a sudoku solver, 8 queens puzzle etc. with it.  Really need
to get happy with recursion for this one... but man, it's terse.
