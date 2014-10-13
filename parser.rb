require 'rspec-html-matchers'

class Parser

  def initialize
    @options = Options.new
  end

  def title
    File.basename(options.input_file, ".md").capitalize
  end

  def template
    file = File.open(options.template_filename, "r")
    template_contents = file.read
    file.close
    fixtags(template_contents)
  end

  private

  def fixtags(template)
    template.gsub!('<title>%title%</title>',"<title>#{title}</title>")
  end

  attr_reader :options
end
