Upgrading Heroku stacks appears to be trivial. #infantcpr was on cedar-10. I needed to upgrade to cedar-14

To upgrade I went

```heroku stack:set cedar-14 --app infantcpr
git commit --allow-empty -m "Upgrading to Cedar-14â
git push heroku master
```

and it was done. If something went wrong you can rollback using these instructions. https://devcenter.heroku.com/articles/cedar-14-migration#reverting-to-cedar
Migrating to the Celadon Cedar-14 Stack | Heroku Dev Center
How to upgrade from the Cedar stack to the Cedar-14 stack, which features updated system dependencies and operating system.

[9:56 AM] isaac: Nice. I hope Cloud66 proves to be similarly straightforward. (edited)

[9:59 AM] patrick: I thought you had to create a whole new app @dave?

[9:59 AM] patrick: interesting.

[9:59 AM] dave: no, you can optionally create a staging setup with the new stack
NEW MESSAGES

[9:59 AM] dave: but I skipped that part given you can revert easily

[10:00 AM] dave: so i just upgraded and deployed to production

[10:00 AM] dave: would revert back quickly if it broke badly

[10:00 AM] dave: but everything looks fine

[10:00 AM]
