module DegraeveHelper 

  # Call an ADdegraeve translation API method
  #
  # @param dialect [Dialect]      contains URI and name for API endpoint
  # @param text    [String]       the string to translate
  def self.call_api_method(dialect, text)

    uri = URI.parse("#{dialect.path}?w=#{text}&d=#{dialect.name}")
    res = Net::HTTP.get(uri)
    res
    #p res.split('<blockquote>').split('</blockquote>')[1]
    @results = res.split('<blockquote>')[1].split('</blockquote>')[0]
  end
end 