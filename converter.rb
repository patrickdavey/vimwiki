#!/usr/bin/env ruby
require 'pry'
require 'pry-remote'
require './options.rb'
require './template.rb'
require './wiki_body.rb'

options = Options.new
template_html = Template.new(options)
body_html = WikiBody.new(options)
combined_body_template = template_html.to_s.gsub('%content%', body_html.to_s)

File.write(options.output_fullpath, combined_body_template)
