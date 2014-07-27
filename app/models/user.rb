class User < ActiveRecord::Base
  
  
  attr_accessible :name, :email;
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  
  validates(:name, :length => {:maximum => 50} )
  
  validates(:email,  
  :format => {:with => email_regex},
  :uniqueness => {:case_sensitive => false}, #By default the 'uniqueness is set to 'true' while the 'case_ssssensitivity' is set to ' false'
  :presence => true
  )
  
end
