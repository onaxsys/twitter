class User < ActiveRecord::Base
  
  
  attr_accessible :name, :email, :password, :password_confirmation;
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  
  validates(:name, :length => {:maximum => 50} )
  
  validates(:email,  
  :format => {:with => email_regex},
  :uniqueness => {:case_sensitive => false}, #By default the 'uniqueness is set to 'true' while the 'case_ssssensitivity' is set to ' false'
  :presence => true
  )
  
  validates(:password, :presence => true,
            :confirmation => true,
            :length => {:within => 6..40}
            )
  before_save(:encryp_password)
  
  private
    def encrypt_password
      self.encrypted_password = encrypt(password)
    end
    
    def encrypt(string)
      string #Only a temporary implementation
    end
end
