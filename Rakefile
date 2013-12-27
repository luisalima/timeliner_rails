Encoding.default_external = "UTF-8" if defined?(Encoding)

require "bundler/gem_tasks"

def build_image_dependencies(source_code)
  image_dependencies = Set.new source_code.scan(/url\(.*"?images\/([-_.a-zA-Z0-9]+)"?\)/).map(&:first)
  code = image_dependencies.inject("") do |acc, img|
    acc += "//= depend_on_asset \"timeliner/images/#{img}\"\n"
  end
end

desc "Generate assets"
task :assets do

  Rake.rake_output_message "Copying javascripts"
  target_dir = "app/assets/javascripts/timeliner_rails"
  puts FileUtils.cp(Dir.glob("timeliner/js/timeliner.js"), target_dir)

  Rake.rake_output_message "Copying images"
  target_dir = "app/assets/images/timeliner_rails"
  puts FileUtils.cp(Dir.glob("timeliner/images/*"), target_dir)

  Rake.rake_output_message "Generating css files"
  target_dir = "app/assets/stylesheets/timeliner_rails"

  Dir.glob("timeliner/css/*").each do |path|
    basename = File.basename(path)
    source_code = File.read(path)

    source_code = build_image_dependencies(source_code) + "\n" + source_code unless build_image_dependencies(source_code).empty?
    source_code.gsub!(/url\(.*"?images\/([-_.a-zA-Z0-9]+)"?\)/, "url(<%= image_path(\"#{path}\1\") %>)")

    puts "#{target_dir}/#{basename}.erb"
    File.open("#{target_dir}/#{basename}.erb", "w") do |out|
      out.write(source_code)
    end
  end
end
