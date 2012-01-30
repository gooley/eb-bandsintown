$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))


require 'rubygems'
require 'cgi'
require 'active_support/all'
require 'json'
require 'rest_client'

require "eb-bandsintown/version"
require 'eb-bandsintown/base'
require 'eb-bandsintown/connection'
require 'eb-bandsintown/artist'
require 'eb-bandsintown/event'
require 'eb-bandsintown/venue'

module Bandsintown
  VERSION = '0.3.2'
  class APIError < StandardError; end
  class << self
    # All Bandsintown API requests require an app_id parameter for identification.
    # See http://www.bandsintown.com/api/authentication for more information.
    #
    attr_accessor :app_id
  end
end