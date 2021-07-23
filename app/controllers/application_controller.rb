class User::ParameterSanitizer < Devise::ParameterSanitizer
    def initialize(*)
        super
        permit(:sign_up, keys: [:name, :school, :grade, :department, :gender, :email, :password])
    end
end

class Restaurant::ParameterSanitizer < Devise::ParameterSanitizer
    def initialize(*)
        super
        permit(:sign_up, keys: [:name, :address, :email, :password])
    end
end


class ApplicationController < ActionController::Base

  # ログイン後の遷移
  def after_sign_in_path_for(resource)
    case resource
    when Restaurant
      restaurant_path(current_restaurant)
    when User
      user_path(current_user)
    end
  end

    protected
     
    def devise_parameter_sanitizer
        if resource_class == User
          User::ParameterSanitizer.new(User, :user, params)
        elsif resource_class == Restaurant
          Restaurant::ParameterSanitizer.new(Restaurant, :restaurant, params)
        else
          super # Use the default one
        end
    end
end
