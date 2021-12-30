1. Date: 20-June-2017
2. Symptom: Extremely fast benchmarking in tests
3. Cause: Good question, something broken in the guts of ActiveRecord and not backported
4. How found: After messing around a lot, added a column of name `association_count` and then was able to reproduce the error.
5. Fix: Still working on that part.
6. Time taken to resolve bug: 4 hours.
7. Lessons: Make damn sure when you're doing a benchmark that you're actually getting the expected output.

