Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, ENV['TEST_ID'], ENV['TEST_SECRET']
end
