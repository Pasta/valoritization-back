class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  # In case you want to allow a client from another server:
  #
  # after_filter :cors_set_access_control_headers
  # before_filter :cors_preflight_check
  #
  # def cors_set_access_control_headers
  #   headers['Access-Control-Allow-Origin'] = '*'
  #   headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
  #   headers['Access-Control-Request-Method'] = '*'
  #   headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  #   headers['Access-Control-Max-Age']           = '1728000'
  #   headers['Access-Control-Allow-Credentials'] = 'true'
  # end
  #
  # def cors_preflight_check
  #   if request.method == 'OPTIONS'
  #     headers['Access-Control-Allow-Origin'] = '*'
  #     headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
  #     headers['Access-Control-Request-Method'] = '*'
  #     headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  #     headers['Access-Control-Max-Age']           = '1728000'
  #     headers['Access-Control-Allow-Credentials'] = 'true'
  #     render :text => '', :content_type => 'text/plain'
  #   end
  # end

end
