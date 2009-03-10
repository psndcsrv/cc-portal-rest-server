require_dependency 'simple_access_control'

ActionController::Base.send :include, SimpleAccessControl

puts "Simple Access Control initialized."
