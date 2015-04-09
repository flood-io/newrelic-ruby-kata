class TweetsController < ApplicationController
  caches_page :index

  def index
    response = HTTParty.get('http://twitter.com/newrelic')

    parsed_data = Nokogiri::HTML.parse response.body
    tweetNodes = parsed_data.xpath("//p[@class='js-tweet-text']")
    @nodes = tweetNodes.collect do |node|
      node.inner_html
    end

    expires_in 600.seconds, public: true
  end
end
