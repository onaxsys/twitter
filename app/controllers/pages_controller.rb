class PagesController < ApplicationController
   
  def home
    @title = "Home";
  end

  def about
    @title = "About";
  end
  
  def contact
    @title="";
  end
  
  def help
    @title= "Help";
  end
  
end