OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 122358817928035, 0515df1ee53764232d7a63b48e3e2b97
end

