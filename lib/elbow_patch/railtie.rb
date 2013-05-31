module ElbowPatch
  class Railtie < ::Rails::Railtie
    initializer "load cve patches" do
      Dir[File.expand_path('../cve/*.rb', __FILE__)].each do |filename|
        require filename
      end
    end
  end
end

