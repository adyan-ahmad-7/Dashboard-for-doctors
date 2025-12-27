class Users::SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate(auth_options)

    if resource && !resource.confirmed?
      flash[:alert] = "Please confirm your email before logging in."
      redirect_to new_user_session_path
    else
      super
    end
  end
end
