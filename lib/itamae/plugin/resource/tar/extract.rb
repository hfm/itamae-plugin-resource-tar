require 'itamae'

module Itamae
  module Plugin
    module Resource
      class TarExtract < Itamae::Resource::Base
        define_attribute :action, default: :extract
        define_attribute :destination,   type: String, default_name: true
        define_attribute :source, type: String, required: true
        define_attribute :download_dir,  type: String
        # define_attribute :tar_flags,     type: [String, Array], :default => Array.new
        # define_attribute :checksum,      type: String

        def action_extract(options)
          command = %W(tar xf #{attributes.source} -C #{attributes.destination})
          run_command(cmd)
        end

        private
        def ensure_tar_available
          unless run_command('which tar', error: false).exit_status == 0
            raise '`tar` command is not available.'
          end
        end
      end
    end
  end
end
