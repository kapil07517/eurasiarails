Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FB_APP_ID, FB_SEC_ID, {:scope => 'email, publish_actions, offline_access, publish_stream,read_stream'}
end