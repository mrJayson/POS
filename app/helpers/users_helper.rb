module UsersHelper
  include ApplicationHelper
  def users_in_store
      current_store.users
  end
  
end
