Date: 20-June-2017
Symptom: Extremely fast benchmarking in tests
Cause: Good question, something broken in the guts of ActiveRecord and not backported
How found: After messing around a lot, added a column of name `association_count` and then was able to reproduce the error.
Fix: Still working on that part.
Time taken to resolve bug: 4 hours.
Lessons: Make damn sure when you're doing a benchmark that you're actually getting the expected output.

