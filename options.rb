class Options
  DEFAULTS = ["1", #force - 1/0
               "markdown",
               "md",
               "/home/patrick/Dropbox/vimwiki/site_html/",
               "/home/patrick/Dropbox/vimwiki/index.md",
               "/home/patrick/Dropbox/vimwiki/site_html/style.css",
               "/home/patrick/Dropbox/vimwiki/templates/",
               "default",
               ".tpl",
               "-"]
  def initialize
    arguments = ARGV.empty? ? DEFAULTS : ARGV
    binding.pry
  end
end
