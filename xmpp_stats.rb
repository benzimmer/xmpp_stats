require 'open-uri'
require 'pry'

class XmppStats

  attr_reader :endpoint

  def initialize(endpoint=nil)
    @endpoint = endpoint || 'http://localhost:5280'
  end

  def users
    request :users
  end

  def sessions
    request :sessions
  end

  def host
    request :host
  end

  def room(jid)
    request :room, jid
  end

  private

  def request(metric, option=nil)
    url = build_url(metric, option)

    begin
      open(url).read
    rescue => e
      puts "An error occured while querying #{url}"
      puts "#{e.message}"
      nil
    end
  end

  def build_url(metric, option=nil)
    File.join [endpoint, path_prefix, metric.to_s, option].compact
  end

  def path_prefix
    'user_count'
  end

end
