require "rails"
require "rsyc"

module Rsyc
  class Railtie < Rails::Railtie
    initializer "rsyc.init" do
      Rails.application.config.app = Rsyc.new Rails.root.join('config', 'app.yml'), Rails.env
    end
  end
end
