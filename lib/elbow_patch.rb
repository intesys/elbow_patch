require 'rubygems'
require 'elbow_patch/version'

module ElbowPatch
  class << self
    def apply(name, versions = {})
      apply_patch = false
      versions.each do |min_version, max_version|
        apply_patch = apply_patch || rails_between(min_version, max_version)
      end
      if apply_patch
        Rails.logger.debug("Applying patch #{name}")
        yield
      end
    end

    private
    def rails_between(min, max)
      Gem::Version.new(Rails.version) >= Gem::Version.new(min.dup) && Gem::Version.new(Rails.version) <= Gem::Version.new(max.dup)
    end
  end

end

require 'elbow_patch/railtie'
