module Spree
  module ReservebarTheme
    class Engine < Rails::Engine
      isolate_namespace Spree
      engine_name 'spree_reservebar_theme'

      def self.activate
        Dir.glob(File.join(File.dirname(__FILE__), '../../../app/**/*_decorator*.rb')) do |c|
          Rails.configuration.cache_classes ? require(c) : load(c)
        end
      end

      config.autoload_paths += %W(#{config.root}/lib)
      config.to_prepare &method(:activate).to_proc

      initializer 'spree.reservebar_theme.environment', :after => 'spree.environment' do |app|
      end
    end
  end
end
