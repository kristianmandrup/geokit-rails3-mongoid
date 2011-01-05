require 'geokit-rails3'
require 'rails'

module Geokit

  class Railtie < ::Rails::Railtie

    config.geokit = ActiveSupport::OrderedOptions.new
    config.geokit.geocoders = ActiveSupport::OrderedOptions.new

    initializer 'geokit-rails3.insert_into_active_record' do
      ActiveSupport.on_load :active_record do  
        # TODO        
        # ActiveRecord::Base.send(:include, Geokit::ActsAsMappable::Glue)
        # Geokit::Geocoders.logger = ActiveRecord::Base.logger
      end
    end

    initializer 'geokit-rails3.insert_into_action_controller' do
      ActiveSupport.on_load :action_controller do
        ActionController::Base.send(:include, Geokit::GeocoderControl)
        ActionController::Base.send(:include, GeoKit::IpGeocodeLookup)
      end
    end

    config.after_initialize do |app|
      options = app.config.geokit
      geocoders_options = options.delete(:geocoders)

      options.each do |k,v|
        Geokit::send("#{k}=", v)
      end
      geocoders_options.each do |k,v|
        Geokit::Geocoders::send("#{k}=", v)
      end
    end
  end

end