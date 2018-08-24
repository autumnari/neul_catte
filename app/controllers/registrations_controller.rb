class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
      "/main/sign_up"
    end
end
