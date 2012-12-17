FACEBOOK_CONFIG = YAML.load_file(Rails.root.join("config/facebook.yml"))[Rails.env]

Rails.application.config.middleware.use OmniAuth::Builder do
provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret_key'],
         :scope => 'email,user_birthday,read_stream', :display => 'popup'
provider :identity,
         fields: [:email, :name, :user_type],
         on_failed_registration: lambda { |env|
          IdentitiesController.action(:new).call(env)
      }

end
OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}
