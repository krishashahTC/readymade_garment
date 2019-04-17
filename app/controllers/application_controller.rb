class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    
    if resource.profile.role.eql?("admin")
      admin_index_path
    elsif resource.profile.role.eql?("seller")
      sellers_path
    else
      root_path
    end
  end
end
