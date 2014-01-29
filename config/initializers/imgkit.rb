IMGKit.configure do |config|
  binary_name = ENV['RACK_ENV'] == 'production' ? 'wkhtmltoimage-amd64' : 'wkhtmltoimage'
  config.wkhtmltoimage = Rails.root.join('bin', binary_name).to_s
end