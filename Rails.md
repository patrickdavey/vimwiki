[Interesting link on asset gems](https://github.com/rails/rails/commit/49c4af43ec5819d8f5c1a91f9b84296c927ce6e7) basically discusses a way around memory bloat of loading asset oriented gems in production.  Seems completely reasonable to me.



http://blog.heapsource.com/post/55696145680/effortless-two-factor-authentication-in-rails

## Test Links

http://www.sitepoint.com/lite-spec-helper-faster-rails-tests/
http://stackoverflow.com/questions/9822624/rails-isolated-tests-running-under-rails-env

http://viget.com/extend/8-insanely-useful-activeadmin-customizations

http://www.sitepoint.com/basecamp-like-subdomains-with-devise/

flog, flay, rails-best-practice : test out these gems

http://rubyweekly.com/issues/213 possibly useful upgrade 3.2 4.+ links

[Really nice video on Draper, by Jeff Casimir - Mr. Draper](https://www.youtube.com/watch?v=VC5z8nadnQE)
[Foreign Keys](http://robots.thoughtbot.com/referential-integrity-with-foreign-keys)

```ruby
# useful for printing out SQL in rails2 console
  ActiveRecord::Base.connection.instance_variable_set :@logger, Logger.new(STDOUT)
```

[Refactoring Rails Recipes](http://rails-refactoring.com/recipes/)


http://awesome-ruby.com/

```ruby
# if you need to set the timezone for users.. just make sure the time_zone
# returns something sensible
class ApplicationController
  around_filter :set_timezone_for_this_request, if: :current_user

  def set_timezone_for_this_request(&block)
    Time.use_zone(current_user.time_zone, &block)
  end
end
```
