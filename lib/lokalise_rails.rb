require 'lokalise_rails/task_definition/base'
require 'lokalise_rails/task_definition/importer'
require 'lokalise_rails/task_definition/exporter'
require 'lokalise_rails/railtie' if defined?(Rails)

module LokaliseRails
    class << self
        attr_accessor :api_token, :project_id
        attr_writer :import_opts, :import_safe_mode, :export_opts, :locales_path,
                    :file_ext_regexp, :skip_file_export

        def config
            yield self
        end
                    
        def import_opts
            @import_opts || {
                format: 'yaml',
                placeholder_format: :icu,
                yaml_include_root: true,
                original_filenames: true,
                directory_prefix: '',
                indentation: '2sp'
            }
        end

        def import_safe_mode
            @import_safe_mode.nil? ? false : @import_safe_mode
        end

        def export_opts
            @export_opts || {}
        end

        def locales_path
            @locales_path || "#{Rails.root}/config/locales"
        end

        def file_ext_regexp
            @file_ext_regexp || /\.ya?ml\z/i
        end
        
        def skip_file_export
            @skip_file_export || ->(_) { false }
        end
    end
end