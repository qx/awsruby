# Load the rails application.
require File.expand_path('../application', __FILE__)

# Initialize the rails application.
SampleApp::Application.initialize!

Rails::Initializer.run do |config|
  config.active_record.colorize_logging = false
end

class Logger
  def format_message(level, time, progname, msg)
    "#{time.to_s(:db)} #{level} -- #{msg}\n"
  end
end