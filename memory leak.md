https://imgur.com/a/ekTG6gO

Now that was a weird graph.  Took us a while to track it down, because we'd done a major upgrade at the same time.  Finally tracked it down by good use of versioning in Datadog to see exactly which deploy had introduced the issue.

We added better metrics for catching this kind of badness in the future.  The issue turned out to be some bad metaprogramming on the user object.  Effectively we were adding a new ancestor to the user object on every request.
