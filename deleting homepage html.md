Date: 25-Aug-2020
Symptom: Intermittent failure on homepage
Cause: Client deleted the homepage html file accidentally and passenger spawned a new process.
How found: Client told me he did it ;)
Fix: Redeployed site
Time taken to resolve bug: 45 minutes
Lessons: Don't let the client near production ;) Also, check `w` to see that no one is online / logged into the box.

