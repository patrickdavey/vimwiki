Use of

{{{class="brush: ruby"
  require 'minitest/autorun'
  require_relative '../../app/models/blog'

}}}

Method object for new.  Inserting a seam for swapping out during testing.
Pretty interesting way of doing things.  Overkill?  Or just fast tests.

Posts vs Entries
I take his point that you might have lots of different types of post, but
I guess I don't quite feel like that means you should call it entries.  After
all, he goes on to say PhotoPost, VideoPost etc. which all sound like posts to
me.

The post class
find the minitest syntax strange I admit!
passing mocks around seems brittle

I like his point about using 'publish' and 'draft' etc. instead of save.


aggregate roots (Domain driven design)
