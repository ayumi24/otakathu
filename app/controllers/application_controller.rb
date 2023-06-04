class ApplicationController < ActionController::Base
  before_action :configure_permitted_paramethers, if: :devise_controller?

  protected

  #ユーザー登録の際にnameのデータ操作を許可
  def configure_permitted_paramethers
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
