class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    user ||= User.new # guest user (not logged in)
    if user.superadmin_role?
      can :manage, :all
      RailsAdmin.config do |config|
        config.model User do
         visible true
        end
       end
    end
    #if user.supervisor_role?
      #can :manage, :all
      #cannot :edit, :User
      #RailsAdmin.config do |config|
        #config.model User do
         #visible false
        #end
       #end
    #end

    #if user.is_supervisor?
      #RailsAdmin.config do |config|
       #config.model User do
        #visible false
       #end
      #end
   
    #end

  end
end