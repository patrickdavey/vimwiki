require_relative '../wiki_body.rb'
require_relative '../options.rb'
require 'rspec-html-matchers'

describe WikiBody do

  let(:options) { Options.new }
  let(:wiki_body) { WikiBody.new(options).to_s }
  before do
    allow(Options).to receive(:arguments).and_return(Options::DEFAULTS)
  end

  it "must convert wiki links" do
    expect(wiki_body).to match(/<a href="books.html">Books<\/a>/)
  end

end
=begin
= Patrick Davey personal Wiki =
    * [[Books]] -- to read
    * [[Vim Tips]]-- anything to do with vim.
    * [[Git Tips]]-- anything to do with git.
    * [[Bash Tips]]-- anything to do with bash.
    * [[Mysql Tips]]-- anything to do with mysql.
    * [[css - responsive - design Tips]]-- anything to do with css etc..
    * [[Refinery]]-- useful Refinery Stuff
    * [[Backbone]]-- useful Backbone Stuff
    * [[Tmux]]-- useful Tmux Stuff
    * [[Rails]]-- useful Rails Stuff
    * [[Scratchpad]] temporary stuff.
    * [[Server Setup]] -- checklist to setup a server.
    * [[Todo]] -- things to do
    * [[Quotes]] -- Nothing to do with programming!
    * [[Movies to watch]] -- Movies to watch
    * [[lent items]]
    * [[bike stuff]]
    * [[raspberrypi]]


== Languages ==
    * [[Ruby]]-- useful Ruby Stuff
    * [[iOS]]-- useful iOS Stuff
    * [[JavaScript]]-- useful JS Stuff
=end
