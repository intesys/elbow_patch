module ElbowPatch
  class Railtie < Rails::Railtie
    initializer "load cve patches" do
      File.dir() { |f| require f}
    end
  end
end

