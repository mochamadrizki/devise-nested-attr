class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters

  # GET /users/sign_up
  # def new

  #   # Override Devise default behaviour and create a locations as well
  #   build_resource({})
  #   resource.build_location
  #   respond_with self.resource
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :email, :password, :password_confirmation,
      :locations_attributes => [
        :address1, :address2
      ]
    ])
  end
end