require 'elbow_patch/railtie'
require 'elbow_patch/version'

module ElbowPatch
  def self.apply(versions = {})
    apply_patch = false
    versions.each do |min_version, max_version|
      apply_patch = apply_patch || rails_between(min_version, max_version)
    end
    yield if apply_patch
  end

  private
  def rails_between(min, max)
    Gem::Version.new(Rails::VERSION::STRING) >= Gem::Version.new(min) && Gem::Version.new(Rails::VERSION::STRING) <= Gem::Version.new(max)
  end
end
