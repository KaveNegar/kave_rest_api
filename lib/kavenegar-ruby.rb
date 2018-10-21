%w(faraday faraday_middleware validatable i18n).each do |dependency|
    require dependency
end

begin
  require "pry"
rescue LoadError
 
end

module KaveRestApi
    
  class << self
    attr_accessor :configuration
  end
  
  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end

  class Configuration
    attr_accessor :api_key, :default_sender,:debugmode,:format,:strip_emoji
   
    def initialize
  
    end
    
  end
  
end

%w(version core helper request meaning respond).each do |identify|
    require "kavenegar-ruby/#{identify}"
end




