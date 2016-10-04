* http://www.sitepoint.com/phoenix-for-railsies/
* http://resolve.digital/blog/posts/creating-a-todo-application-using-the-phoenix-framework-and-ember-js
* [Garbage collection](https://hamidreza-s.github.io/erlang%20garbage%20collection%20memory%20layout%20soft%20realtime/2015/08/24/erlang-garbage-collection-details-and-why-it-matters.html)
* https://medium.com/@diamondgfx/debugging-phoenix-with-iex-pry-5417256e1d11
* http://learnyousomeerlang.com/
* http://renderedtext.com/blog/2016/04/07/ecto-for-rails-developers/?utm_source=rubyweekly&utm_medium=email
* https://dockyard.com/blog/2016/05/02/phoenix-tips-and-tricks
* https://www.dailydrip.com/topics/elm/drips/elm-phoenix-socket
* [simple intro to plug](http://www.brianstorti.com/getting-started-with-plug-elixir/)
* [Phoenix and vuejs](https://medium.com/front-end-hacking/phoenix-and-vue-js-b974d8b91cb6#.4v4cs823w)
* [Phoenix and webpack](http://manukall.de/2015/05/01/automatically-building-your-phoenix-assets-with-webpack/)

```elixir
  # to turn tracing on for a pid
  :sys.trace pid, true
```

```elixir
  # super handy, returns the state of?! the GenServer?!@
  :sys.get_state Stack.Server 
```

```bash
  #get the routes
  mix phoenix.routes
```

```elixir
  #extend timeout in test environment - from https://til.hashrocket.com/posts/36208f16ff-ecto-20-ownership-timeout-myelixirstatus

  config :my_app, MyApp.Repo,
    adapter: Ecto.Adapters.Postgres,
    #...
    ownership_timeout: 60_000
```
defmodule Cast
  def from_source(source) do
    from c in MyApp.Cast,
      where: c.source == ^source
  end
end
  theodore 6:34 PM The list is about 5000 elements long
  benwilson512
  6:34 PM sure
  6:34 exits are async though
  6:34 they ﻿⁠⁠might﻿⁠⁠ happen after the call
  6:34 they might happen in the middle of it
  6:34 so
  6:35 the other issue us trying to do 5000 api calls is not likely what you want either
  6:35 simultaneously
  6:35 prior to ﻿⁠⁠⁠⁠Flow﻿⁠⁠⁠⁠ (edited)
  sschneider
  6:35 PM you should look at the Task module, that seems to be more of what you are wanting to do
  benwilson512
  6:35 PM a more idiomatic approach would be chunking
  6:35 and then Task yeah
  6:35 Task.async and Task.await
  6:35 with Flow however we can do even better
  6:36

  large_list
  |> Flow.from_enumerable(stages: 100, max_demand: 4)
  |> Flow.map(&make_api_call/1)
  |> Flow.run

  6:36 100 concurrent uploaders
  sschneider
  6:36 PM imo i probably wouldn't use something thats still pretty experimental for a beginner
  benwilson512
  6:37 PM ehhhh
  6:37 h
  6:37 it's experimental in that it isn't the standard library
  sschneider
  6:37 PM that abstracts quite a lot of stuff away that he'd probably want to learn about
  benwilson512
  6:37 PM but compared to many libraries people happily use
  6:37 yea
  6:37 fair
  stephanbv
  6:38 PM @venkat I am, however its giving me a map as the head of the list. I need to move deeper within the map. The rest of the maps keys are static, however this one key will change, so I cant really do anything with the key itself (It seems to me anyway)
  venkat
  6:38 PM @stephanbv you can probably do it in steps
  6:38 ﻿⁠⁠⁠⁠[value] = Map.values(map)﻿⁠⁠⁠⁠
  6:38 then you can work with whatever the result of that is
  benwilson512
  6:39 PM

  chunk_size = trunc(length(large_list)/max_concurrency)

  large_list
  |> Stream.chunk(chunk_size, chunk_size, [])
  |> Enum.map(fn chunk ->
    Task.async(fn ->
      for item <- chunk, do: make_api_call(item)
    end)
  end)
  |> Enum.map(&Task.await/1)

  (edited)
  6:39 poor man's flow ^ :wink:
  6:40 @sschneider I do hear your point, but part of what makes flow compelling is how rather hard it is to do properly
  6:40 with merely the existing tools we have
  6:41 I can't tell you how many times I wrote basically https://github.com/hexpm/hex/blob/master/lib/hex/parallel.ex	
  GitHub
  hexpm/hex
  hex - Package manager for the Erlang VM
  6:41 and I know eric has too
  theodore
  6:41 PM So, why Task.async instead of GenServer.cast? What's the fundamental difference?
  benwilson512
  6:41 PM it has to do with how you handle the result
  6:42 you're thinking exit is like a regular message
  6:42 where it will get handled after the genserver is done with the handle_cast
  6:42 but this is not the case
  6:42 there are additional reasons
  6:42 Task.async / await is a lot less code
  6:43 lets you focus on the actual API call
  6:43 it's built specifically around one and done
  6:43 one other core problem of course is that you need concurrency limits
  6:43 spawning 5k processes to do 5k simultaneous http requests
  6:43 is generally undesired
  6:43 HTTP requests take system resources (sockets) and those don't scale well to those numbers
  6:44 if you're using httpoison
  6:44 it's all using a pool of like 40 by default anyway
  6:44 so they're all just sitting around waiting on each other
  6:44 Flow makes the concurrency limits easy
  6:44 otherwise you've gotta chunk your list
  6:44 and then do a task per chunk (edited)
  theodore
  6:45 PM Gotcha. Yeah, the Stream.chunk will definitely help. I had to write a recursive way to retry requests if they fail due to being blocked for a high number of burst requests
  6:46 I'll try to implement it with Tasks and see if that reduces the memory usage. Thanks
  venkat
  6:46 PM @theodore flow sounds like a simpler option for this, any reason you're opting for Task?
  benwilson512
  6:47 PM flow was built for exactly this
  theodore
  6:47 PM Ok, sure, I'll check out Flow first
  benwilson512
  6:47 PM https://hexdocs.pm/gen_stage/Experimental.Flow.html
  6:48 @theodore http://elixir-lang.org/docs/master/elixir/Process.html#exit/2
  joshcrews
  6:48 PM i just got this error message, which i believe means an Agent that has been running fine for a few days crashed or something
  benwilson512
  6:48 PM

  If reason is the atom :normal, pid will not exit

  joshcrews
  6:48 PM `(stop) exited in: GenServer.call(:word_bucket_c, {:get, #Function<8.81120678/1 in Trend.TrendsCruncher.handle_info/2>}, 5000)
     ** (EXIT) no process`
  6:48 can you but Agent’s in supervision trees?  named Agents?
  benwilson512
  6:49 PM yes
  6:49 the getting started guide has examples
  joshcrews
  6:49 PM send a link?  been searching
  benwilson512
  6:49 PM you should always put them in supervision trees
  6:49 http://elixir-lang.org/getting-started/mix-otp/supervisor-and-application.html
  6:49 I would go through the whole mix-otp guide
  6:49 if you haven't already
  sschneider
  6:49 PM you can put any function in a supervision tree that returns ﻿⁠⁠⁠⁠{:ok, pid} | {:error, _}﻿⁠⁠⁠⁠
  benwilson512
  6:50 PM true, although not all will behave well
  6:50 for example
  6:50 tasks
  6:51 generally speaking you only want to supervise processes which obey OTP protocols
  joshcrews
  6:52 PM can you please show me more?   I’ve done the whole elixir-lang every guide, elixir in action, PRogramming Elxir; and I’m grepping that link for Agent, and it’s not finding anything.  does someone have a code sample?
  6:52 here’s what my attempt is:
  benwilson512
  6:52 PM so
  joshcrews
  6:52 PM

  defmodule Trend.WorkBucketSupervisor do
    use Supervisor

    def start_link do
      IO.puts "starting #{__MODULE__}"
      Supervisor.start_link(__MODULE__, nil)
    end

    def init(_) do
      processes = [
        worker(Agent, [name: :word_bucket_b]),
        worker(Agent, [name: :word_bucket_c]),
        worker(Agent, [name: :word_bucket_d]),
      ]
      supervise(processes, strategy: :one_for_one)
    end

  end

  benwilson512
  6:52 PM ah
