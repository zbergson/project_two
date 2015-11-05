class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]



  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:email, :password)}
  end
  # end
end
