Jekyll::Hooks.register :site, :pre_render do |site|
  require 'yaml'

  # Set the directory and output file
  image_folder = "./images/02-Cotxes/"
  output_file = "./_data/images.yml"

  # Collect all JPG files
  images = Dir.glob("#{image_folder}*.jpg").map { |f| f.sub('./', '') }

  # Check if the file content is already up to date
  if File.exist?(output_file)
    current_content = File.read(output_file)
    new_content = images.to_yaml

    # Write only if there's a difference
    if current_content != new_content
      File.open(output_file, "w") do |file|
        file.write(new_content)
      end
      puts "Images from #{image_folder} have been written to #{output_file}"
    else
      puts "No changes detected in #{output_file}"
    end
  else
    File.open(output_file, "w") do |file|
      file.write(images.to_yaml)
    end
    puts "Images from #{image_folder} have been written to #{output_file}"
  end
end