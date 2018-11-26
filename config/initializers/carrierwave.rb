CarrierWave.configure do |config|
    if Rails.env.development? || Rails.env.test?
      config.storage :file
    else
      config.storage = :fog
      config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
        region: 'EU'
      }
    config.fog_directory = 'adomantherokubucket'
    config.storage = :fog

    config.storage = :file
    config.enable_processing = Rails.env.development?
    end
end
