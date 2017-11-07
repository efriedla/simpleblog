class User < ApplicationRecord
    has_many :posts
    has_many :comments
    
      validates :email,
      presence: true,
      uniqueness: {case_sensitive: false}
    
      validates :password,
      length: (7..35),
      on: :create
    
      has_secure_password #ensure's that we are using bcrypt
    
      def self.authenticate(params)
        User.find_by_email(params[:email]).try(:authenticate, params[:password])
      end
end
