class Identity < OmniAuth::Identity::Models::ActiveRecord
  has_secure_password
  before_save { |identity| identity.email = email.downcase }

  attr_accessible :email, :name, :user_type, :password_digest, :password, :password_confirmation

  validates_uniqueness_of :email
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
end

