class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource

    def mail 
    existe = User.where(email:params[:busca_correo]).count > 0
    respond_to do |format|
      format.json {render :json => existe}
    end
  end


def layout_by_resource
#decia application 2 es por mientras

      if devise_controller?
          "devise"
        else  
           "application"
        end
      end


end
