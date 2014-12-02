class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
    def self.connect_to_linkedin(auth, signed_in_resource=nil)
	    user = User.where(:provider => auth.provider, :uid => auth.uid).first
	    if user
	      return user
	    else
	      registered_user = User.where(:email => auth.info.email).first
	      if registered_user
	        return registered_user
	      else
	        user = User.create( first_name: auth.info.first_name,
	        					last_name: auth.info.last_name,
	        					headline: auth.info.description,
	                            provider: auth.provider,
	                            email: auth.info.email,
	                            password: Devise.friendly_token[0,20],
	                            summary: auth.extra.raw_info.summary,
	                            public_profile_url: auth.extra.raw_info.publicProfileUrl
	                          )
	      end

	    end
  	end   
 
 
	def disconnect_from_linkedin!
	  self.provider = nil
	  self.uid = nil
	  self.user_linkedin_connection = nil
	  self.save!
	end
end
