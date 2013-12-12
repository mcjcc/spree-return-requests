module SpreeReturnRequests
  class Engine < Rails::Engine
    engine_name 'spree_return_requests'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc

    initializer "spree.return_requests.preferences", :after => "spree.environment" do |app|
      SpreeReturnRequests::Config = Spree::ReturnRequestsConfiguration.new
    end
  end
end
