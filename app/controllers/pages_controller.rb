class PagesController < ApplicationController
  def info
  end

  def search
    if params[:search].blank?  
      redirect_to(personas_path, alert: "Empty field!") and return  
    else    
      @parameter = params[:search].downcase
      @results = Persona.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")  
    end
  end
  
end
