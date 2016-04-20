[Screenshotting and testing tool](http://casperjs.org/)


```javascript
  //scroll to the first field_with_errors field
  if ($(".field_with_errors").first().length) {
    $ele = $(".field_with_errors").first();
    $("html, body").animate({ scrollTop: $ele.offset().top }, 1000);
  }
```
Taken from the '[Classical Inheritence is Obsolete](https://www.youtube.com/watch?v=lKCCZTUx0sI)' talk

### Delegate prototype
```javascript

  // decent way of creating a function object + prototype method

  var proto = {
    hello: function hello(){
      return 'Hello ' + this.name;
    }
  };

  var patrick = Object.create(proto);
  patrick.name = 'Patrick';

```

### Cloning style prototype
1. Great for default state
2. Mixins


```javascript
  var proto = {
    hello: function hello(){
      return 'Hello ' + this.name;
    }
  };
  
  var patrick = _.extend({}, proto, { name: 'Patrick' });
```

### Functional Inheritance
1. Great for encapsulation / privacy
2. Functional mixins
3. Replace Constructors, Init functions, replace super()

```javascript
  var model = function(){
    var attrs = {}; //private

    this.set = function(name, value){
      attrs[name] = value;
      this.trigger('change', {
        name: name,
        value: value
      });
    };

    this.get = function(name){
      return attrs[name];
    };

    // example creating an event emitter
    _.extend(this, Backbone.Events);
  };


  // use it like this

  var patrick = {};
  model.call(patrick).set('name', 'Patrick');
  patrick.get('name'); // 'Patrick'
  
  patrick.on('change', function(event){
    console.log(event.name);  
  });
  
  patrick.set('name', 'Blah'); // Blah
```

http://developer.telerik.com/featured/tools-learn-javascript/

[[Speedtest snippet]]

[[How to give an object Public + Private methods & properties]]
[[links from codeschool best practices]]

[Good write up on Bind](http://blog.bigbinary.com/2011/08/18/understanding-bind-and-bindall-in-backbone.html)

http://ejohn.org/apps/learn/#2

http://perfectionkills.com/understanding-delete/

http://javascriptissexy.com/understand-javascript-callback-functions-and-use-them/

https://developer.mozilla.org/en-US/docs/Web/JavaScript/A_re-introduction_to_JavaScript

[CoffeeScript cookbook](http://coffeescriptcookbook.com/chapters/strings/capitalizing-words)

http://www.objectplayground.com/

[Javascript Design Patterns](http://addyosmani.com/resources/essentialjsdesignpatterns/book/)

https://devmynd.com/blog/2014-7-rails-ember-js-with-the-ember-cli-redux-part-1-the-api-and-cms-with-ruby-on-rails
https://docs.google.com/presentation/d/1Is4f881t0pImLAQLCz4AlcLaUL8Fk4-C_Q2Hbu2DhS4/edit#slide=id.g3f35b2e42_0218

http://6to5.org/

http://js2.coffee/

[Mapping thread on HN - world map](https://news.ycombinator.com/item?id=9464348)

https://hacks.mozilla.org/2015/08/es6-in-depth-modules/

http://www.sitepoint.com/video-an-introduction-to-component-state/
