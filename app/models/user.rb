class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :companies
  has_many :comments
  has_many :proposals

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]

  def full_name
    "#{firstname} #{lastname}"
  end

  def self.find_for_facebook_oauth(auth)
    existing_user = where(auth.slice(:provider, :uid)).first
    return existing_user unless existing_user.nil?

    existing_user = where(email: auth.info.email).first

    if existing_user
      existing_user.provider = auth.provider
      existing_user.uid = auth.uid
      existing_user.name = auth.info.name   # assuming the user model has a name
      existing_user.picture = "http://graph.facebook.com/#{auth.uid}/picture?type=square"
      existing_user.fb_token = auth.credentials.token
      existing_user.fb_token_expiry = Time.at(auth.credentials.expires_at)
      existing_user.save
    else
      existing_user = create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.name = auth.info.name   # assuming the user model has a name
        user.picture = "http://graph.facebook.com/#{auth.uid}/picture?type=square"
        user.fb_token = auth.credentials.token
        user.fb_token_expiry = Time.at(auth.credentials.expires_at)
      end
    end
    existing_user
  end

end
