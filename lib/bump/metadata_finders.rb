# frozen_string_literal: true
require "bump/metadata_finders/ruby/bundler"
require "bump/metadata_finders/python/pip"
require "bump/metadata_finders/java_script/yarn"

module Bump
  module MetadataFinders
    def self.for_package_manager(package_manager)
      case package_manager
      when "bundler" then MetadataFinders::Ruby::Bundler
      when "yarn" then MetadataFinders::JavaScript::Yarn
      when "pip" then MetadataFinders::Python::Pip
      else raise "Unsupported package_manager #{package_manager}"
      end
    end
  end
end
