class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  process resize_to_fit: [512, 512]

  version :medium do
    process resize_to_fill: [500, 300]
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*_args)
    [version_name, 'default.png'].compact.join('_')
  end

  def extension_whitelist
    %w[jpg jpeg gif png]
  end
end
