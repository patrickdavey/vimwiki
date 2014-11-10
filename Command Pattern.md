Factors out the action code into its own object.
Seprates out something that changes (what we want to happen when a
button is pressed) from something that does not change.

Key thing:  It separates the thought from the deed. Instead of saying "Do this"
you say: "Remember how to do this" and later "do that thing I told you about"

Installers are a good application of the Command Pattern.
ActiveRecord::Migration also a good example.

Command Pattern ~ Observer, except they don't care what called them.

![Command Pattern](http://yuml.me/97e7338f)

You may want to implement an `unexecute` method which performs the reverse
actions.  Like an ActiveRecord::Migration down method.

```ruby

class CreateFile < Command

  def initialize(path, contents)
    super("Create file: #{path}")
    @path = path
    @contents = contents
  end

  def execute
    f = File.open(@path, "w")
    f.write(@contents)
    f.close
  end

  def unexecute
    File.delete(@path)
  end
end

class CompositeCommand < Command
  # ...

  def unexecute
    @commands.reverse.each do |cmd|
      cmd.unexecute
    end
  end
end
