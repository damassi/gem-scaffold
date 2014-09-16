module TinySMS
  autoload :Base, 'todo/base'
  autoload :Version, 'todo/version'
end

if defined?(Rails)
  require 'todo/railtie'
end

