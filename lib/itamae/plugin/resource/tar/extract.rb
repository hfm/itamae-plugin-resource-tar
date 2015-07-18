require 'itamae'

module Itamae
  module Plugin
    module Resource
      class Tar < Itamae::Resource::Base
        define_attribute :action, default: :extract
        define_attribute :destination,   type: String, default_name: true
        define_attribute :source, type: String, required: true
        define_attribute :checksum,      type: String
        define_attribute :download_dir,  type: String
        define_attribute :compress_char, type: String, :default => 'z'
        define_attribute :tar_flags,     type: [String, Array], :default => Array.new

        def action_extract
          puts "hello"
        end
      end
    end
  end
end
