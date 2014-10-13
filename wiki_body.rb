require 'rspec-html-matchers'
require 'active_support/inflector'
require 'github/markup'
require 'html/pipeline'

class WikiBody

  def initialize(options)
    @options = options
    get_wiki_markdown_contents
    fixlinks
  end

  def to_s
    pipeline = HTML::Pipeline.new [
      HTML::Pipeline::MarkdownFilter,
      HTML::Pipeline::SyntaxHighlightFilter
    ]
    result = pipeline.call(markdown_body)
    result[:output].to_s
  end


  private

  attr_reader :options, :markdown_body

  def get_wiki_markdown_contents
    file = File.open(options.input_file, "r")
    @markdown_body = file.read
    file.close
  end

  def fixlinks
    #convert wiki_links to markdown links
    # [This link](http://example.net/)
    @markdown_body.gsub!(/\[\[(.*?)\]\]/) do
      link_title = Regexp.last_match[1]
      "[#{link_title}](#{link_title.parameterize}.html)"
    end
  end
end
