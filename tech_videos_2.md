### das-0050-shorter-class-syntax
Elegant showing of how to use `alias` `method_missing` and `define_method` to get a basic presentery type class

```ruby
class BlahPresenter
  def initialize(blah)
    @blah = blah
  end

  def full_name
    #stuff
  end
end
```

down to

```ruby
class BlahPresenter
  takes :blah
  let(:full_name) { #stuff }
end
```

patching module was how he did it in the screencast, though there is a gem https://github.com/garybernhardt/cls/ where he mixes it in using extend, which seems nicer

the `takes` method was interesting though

```ruby
class Module
  def takes(*arg_names)
    define_method(:initialize) do |*arg_values|
      arg_names.zip(arg_values).each do |name, value|
        instance_variable_set(:"@#{name}", value)
      end
    end
end
```



### [Debugging Ruby With Byebug](https://www.youtube.com/watch?v=toZrovVX4ug)
Good introduction to stepping through debugging with byebug. And it's a good point, I don't use debugging (at least stepping) very much. Looks like https://github.com/deivid-rodriguez/pry-byebug is probably what I actually want though.


### [2-Way Binding in Vue with V-Model - Vue.js 2.0 Fundamentals (Part 6)](nEdsu6heW9o)
he explains that one way binding is MV - model -> view, but the two way bindings are MVVM model -> view and also view-> model

`<input v-model="message" type="text"/>`


### [Looping with V-For Directive - Vue.js 2.0 Fundamentals (Part 5)](SnlJ-iXBTdM)
`v-for` can take a count. Who knew? Why you'd want to I'm not quite sure.


### [Using V-Bind Directive - Vue.js 2.0 Fundamentals (Part 4)](7ZjNQ92Pl3c)
`<h1 v-bind:title="blah">content</h1>`

or shorthand

`<img :src="url" :alt="title" :title="title">`

this would be backed by a Vue instance like this:

```javascript

var app = new Vue({
  el: '#app',
  data: {
     title: "my title",
     url: "http://blah"
    }
});
```


### [How to Do 90% of What Plugins Do (With Just Vim)](https://www.youtube.com/watch?v=XA2WjJbmmoM)
Nice introduction to a few concepts. His snippets hack (use a text file basically) was simple but effective. He does need to use `<leader>` though ;)


### [Directives in Vue.js 2.0 - Vue.js Fundamentals (Part 3)](ZCweh0Q8tyE)
Good little introduction. I hadn't heard about the `v-stealth` before.


### [Vue.js Project Setup - Vue.js 2.0 Fundamentals (Part 2)](wr75fuDV9uc)
Super basic introduction as he says. Just shows how easy it is to pull in `Vue` via a script tag, set up a binding.


### [The Josephus Problem - Numberphile](https://www.youtube.com/watch?v=uCsD3ZGzMgE)
Neat little video, came up in the [advent of code problem - 2016 day 19](https://github.com/patrickdavey/AoC/blob/master/2016/19/instructions.md) 

