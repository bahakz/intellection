require 'rails_stdout_logging/rails3'

module RailsStdoutLogging
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      Rails3.set_logger(config)
    end
  end
end
