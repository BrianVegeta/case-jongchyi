module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | CaseJongchyi"      
    end
  end

  def is_super_admin?
    current_user.admin? && current_user.super?
  end
end
