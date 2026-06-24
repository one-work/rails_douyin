require 'rails_com'
module RailsDouyin
  class Engine < ::Rails::Engine

    config.autoload_paths += Dir[
      "#{config.root}/app/models/oauth_user"
    ]
    config.eager_load_paths += Dir[
      "#{config.root}/app/models/oauth_user"
    ]

    config.generators do |g|
      g.resource_route false
      g.helper false
      g.templates.unshift File.expand_path('lib/templates', RailsCom::Engine.root)
    end

  end
end
