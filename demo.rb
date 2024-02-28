require_relative 'lib/lokalise_rails'

LokaliseRails.config do |c|
    c.api_token = '123'
    c.project_id = '345.abc'
    c.export_opts = {
        convert_placeholders: true
    }
    c.skip_file_export = ->(filename) { filename.include?('skip') }
end

puts LokaliseRails.api_token
puts LokaliseRails.project_id
puts LokaliseRails.export_opts
puts LokaliseRails.import_opts
puts '=' * 10
file_to_skip = 'skip_me.yml'
other_file = 'en.yml'
[file_to_skip, other_file].each do |f|
    puts "#{f} skip? #{LokaliseRails.skip_file_export.call(f)}"
end