class ApplicationController < ActionController::Base
    include Authentication
    include Authorization
    include Language
    include Error
    include Pagy::Backend
    
    rescue_from ActiveRecord::RecordNotFound do
        redirect_to products_path, alert: 'No se ha encontrado!'
    end
end
