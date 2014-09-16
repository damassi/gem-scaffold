module TinySMS
  autoload :Base, 'minitext/base'
  autoload :TestGateway, 'minitext/test_gateway'
  autoload :TwilioGateway, 'minitext/twilio_gateway'
  autoload :Version, 'minitext/version'
end

if defined?(Rails)
  require 'minitext/railtie'
end

