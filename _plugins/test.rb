# require 'yaml'
# require 'fileutils'

# # Define the folders to process
# folders = ["./images/01-Plantes/", "./images/02-Cotxes/", "./images/03-Casetes/"]
# output_file = "./images.yml"

# # Initialize a hash to store images categorized by folder and subfolder
# images_by_folder = {}

# # Iterate through each folder
# folders.each do |folder|
#   # Extract folder name (like '01-Plantes', '02-Cotxes') to use as the key
#   folder_key = folder.sub('./images/', '').chomp('/')
#   images_by_folder[folder_key] = {}

#   # Collect all JPG files in the folder and its subfolders
#   Dir.glob("#{folder}**/*.jpg").each do |file|
#     relative_path = file.sub('./', '')  # Get the relative file path

#     # Calculate the relative path from the main folder (without the folder name)
#     # subfolder_path = File.dirname(relative_path).sub("#{folder.sub('./', '')}/", '').chomp('/')
#     # subfolder_path = File.dirname(relative_path).sub(folder.sub('./', ''), '').chomp('/')
    

#     current_folder = folder.sub('./', '').chomp('/')

#     subfolder_path = File.dirname(relative_path).chomp('/').sub(current_folder, '').sub(/^\/+/, '')

#     # If the subfolder path is empty, the file is directly in the main folder
#     if subfolder_path.empty?
#       # The file is in the root of the main folder, add it to 'images'
#       (images_by_folder[folder_key]['images'] ||= []) << relative_path
#     else
#       # Otherwise, the file is in a subfolder
#       (images_by_folder[folder_key][subfolder_path] ||= []) << relative_path
#     end
#   end
# end

# # Convert the hash to YAML format
# new_content = images_by_folder.to_yaml

# # Write the YAML content to the file
# File.open(output_file, "w") do |file|
#   file.write(new_content)
# end

# puts "Images have been written to #{output_file}"