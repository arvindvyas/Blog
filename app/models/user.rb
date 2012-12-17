class User < ActiveRecord::Base
		 attr_accessible :email, :first_name, :last_name, :country, :date_of_birth, :user_type, :address, :phone_number,
                  :skype, :chat, :facebook, :linkedin, :twitter, :nationality, :gender, :tagline, :avatar, :password,:employer, :employer_website,
                  :uid, :provider, :password_digest, :credits, :resume_viewing_until, :status_newsletter
 
  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
end