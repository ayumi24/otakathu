class ApplicationController < ActionController::Base
  before_action :configure_permitted_paramethers, if: :devise_controller?

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    public_homes_about_path
  end

  protected

  #ユーザー登録の際にnameのデータ操作を許可
  def configure_permitted_paramethers
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
