* https://tad.thorley.dev/2021/01/31/vue-for-the-html-you-already-have.html excellent link on integrating vue and rails
* [Interesting link on asset gems](https://github.com/rails/rails/commit/49c4af43ec5819d8f5c1a91f9b84296c927ce6e7) basically discusses a way around memory bloat of loading asset oriented gems in production.  Seems completely reasonable to me.
* [Nice example of an rspec rails_helper file](http://blog.thefrontiergroup.com.au/2016/02/clean-rails_helper-file)
* [Rails javascript integration strategies](https://github.com/chrisvfritz/rails-javascript-integrations)
* http://blog.heapsource.com/post/55696145680/effortless-two-factor-authentication-in-rails
* [asset pipeline post -rails 4](https://schneems.com/2017/11/22/self-hosted-config-introducing-the-sprockets-manifestjs/)
* [react-rails-webpacker](https://mailchi.mp/arkency/testing-reactjs-components-with-jest-in-railswebpackerwebpack-environment-the-setup-1064401?e=570575c1b5)
* [webpacker and vue](https://medium.com/@hunterae/rails-webpacker-and-vue-cli-can-actually-play-nicely-10215fe833e1)
* https://dev.to/vannsl/vue3-on-rails-l9d
* [force ssh rollback](https://jamescrisp.org/2013/08/04/moving-to-https-rails-force_ssl-and-rollback/)
* [decently sized rails project to look at](https://github.com/pupilfirst/pupilfirst/tree/master/app/graphql/types)
* https://evilmartians.com/chronicles/how-to-graphql-with-ruby-rails-active-record-and-no-n-plus-one

* ## Test Links
* http://www.sitepoint.com/lite-spec-helper-faster-rails-tests/
* http://stackoverflow.com/questions/9822624/rails-isolated-tests-running-under-rails-env
* http://viget.com/extend/8-insanely-useful-activeadmin-customizations
* http://www.sitepoint.com/basecamp-like-subdomains-with-devise/
* flog, flay, rails-best-practice : test out these gems
* [Really nice video on Draper, by Jeff Casimir - Mr. Draper](https://www.youtube.com/watch?v=VC5z8nadnQE)
* [Foreign Keys](http://robots.thoughtbot.com/referential-integrity-with-foreign-keys)
* [Rails event store](http://us5.campaign-archive2.com/?u=1bb42b52984bfa86e2ce35215&id=c22d38ebe1&e=83934cf279)
* [gist on composable query objects](https://paste.ofcode.org/758SJedzuvdU6yYQmWFAQv)

## performance testing?
* https://github.com/rails/rails-perftest
* https://github.com/piotrmurach/rspec-benchmark
* https://github.com/schneems/derailed_benchmarks
* https://www.schneems.com/2017/04/12/jumping-off-the-memory-cliff/
* https://github.com/MiniProfiler/rack-mini-profiler
* https://github.com/ruby-prof/ruby-prof
* https://github.com/flyerhzm/bullet
* https://devhints.io/arel


### ActiveModel & Attributes API
* https://github.com/rails/rails/issues/28020
* https://github.com/rails/rails/pull/30985
* https://api.rubyonrails.org/classes/ActiveRecord/Attributes/ClassMethods.html
* https://blog.bigbinary.com/2018/12/11/rails-5-attributes-api.html
* 

```ruby
# useful for printing out SQL console
  ActiveRecord::Base.logger = Logger.new(STDOUT)
```

[Refactoring Rails Recipes](http://rails-refactoring.com/recipes/)

[Uploading from a file](http://stackoverflow.com/questions/2515931/how-can-i-download-a-file-from-a-url-and-save-it-in-rails) and [multi type attachments](http://stackoverflow.com/questions/2919811/styles-in-paperclip-only-if-its-an-image-rails) and [nice dropzone tutorial](http://josephndungu.com/tutorials/ajax-file-upload-with-dropezonejs-and-paperclip-rails)


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

```ruby
# Set up a custom logger.  View output in /log/my_error.log
class MyLogger < Logger
  def format_message(severity, timestamp, progname, msg)
    "[%s] %s\n" % [timestamp.to_s(:short), msg]
  end
end

logfile = File.open(Rails.root.to_s + '/log/my_error.log','a')
logfile.sync = true
MYLOG = MyLogger.new(logfile)
# TO USE: MYLOG.info(<stuff>) (or whatever level of debug info you want to use)
```
