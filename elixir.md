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

```elixir
# cast a struct to anohter struct. Bit horrible and doesn't do proper checking, but it works
struct(CustomCast, Map.from_struct(c))
```

```elixir
#broadcast a message on a channel
Caster.Endpoint.broadcast("cast:cast65", "downloaded", %{msg: "it has been downlaoded 65"})
```

```elixir
# say you want to call a GenServer like this:

GenServer.call(:pid, { :sometuple })

# if you have args like this
args = [:pid, {:sometuple}]

# then you can do
apply(&GenServer.call/2,  args)
```
