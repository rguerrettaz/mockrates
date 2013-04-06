# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Mockrates::Application.initialize!

MARKDOWN = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
require 'ruby_cop'
require 'debugger'

