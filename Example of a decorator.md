```ruby
class SimpleWriter
  def write_line(line)
    puts line
  end
end

class WriterDecorator
  def initialize(writer)
    @writer = writer
  end

  def write_line(line)
    raise 'unimplemented error'
  end
end

class NumberingWriter < WriterDecorator
  def initialize(real_writer)
    super(real_writer)
    @line_number = 1
  end

  def write_line(line)
    @writer.write_line("#{@line_number}: #{line}")
    @line_number += 1
  end
end

writer = NumberingWriter.new(SimpleWriter.new)

writer.write_line('hello')
writer.write_line('there')
```
