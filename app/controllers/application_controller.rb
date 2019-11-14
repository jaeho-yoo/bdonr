class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    
    # 로그인 정보 3개 추가
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :building])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :building])
    end
end