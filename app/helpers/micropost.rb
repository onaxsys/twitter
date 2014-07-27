class Micropost < ActiveRecord::Base


###--THIS FROMS AN ASSOCIATION BETWEEN THE 'microposts' and 'users'
#belongs_to :users 

###---VALIDATION FOR THE 'microposts' RESOURCE
validates( :content, :length => {:maximum => 140});  
  
end
