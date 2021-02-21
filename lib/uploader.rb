require 'aws-sdk-s3'
class Uploader
  def upload(file, bucket)
    s3 = Aws::S3::Resource.new(region: 'us-east-1')
    obj = s3.bucket(bucket).object(File.basename(file))
    obj.upload_file(file)
  end
end