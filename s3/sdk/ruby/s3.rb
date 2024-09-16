require 'aws-sdk-s3'        # AWS SDK to interact with S3
require 'securerandom'      # To generate random UUIDs
require 'pry'               # Optional debugging tool (if needed)

# Retrieve the S3 bucket name from the environment variables
bucket_name = ENV['BUCKET_NAME']

# Initialize the AWS S3 client with default configuration
client = Aws::S3::Client.new

# Create a new S3 bucket
resp = client.create_bucket({
  bucket: bucket_name
})

# Generate a random number of files (between 1 and 6)
number_of_files = 1 + rand(6)
puts "number_of_files: #{number_of_files}"

# Create and upload the specified number of files
number_of_files.times.each do |i|
  puts "i: #{i}"  # Print current iteration index

  # Create a unique file name and path
  filename = "file_#{i}.txt"
  output_path = "/tmp/#{filename}"

  # Generate a file with random UUID content
  File.open(output_path, "w") do |f|
    f.write SecureRandom.uuid  # Write a UUID into the file
  end

  # Upload the file to the S3 bucket
  File.open(output_path, 'rb') do |f|
    client.put_object(
      bucket: bucket_name,  # Specify the bucket
      key: filename,        # Define the object key (file name)
      body: f               # Provide the file as the body
    )
    puts "Uploaded #{filename} to S3 bucket #{bucket_name}"
  end
end
