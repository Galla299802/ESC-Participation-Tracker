RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  #config.authorize_with :cancan
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
   config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit
    config.model User do
      list do
        field :email
        field :first_name
        field :last_name
        field :points
        field :events
        field :superadmin_role
        #field :supervisor_role
        field :user_role

        #field :events

      end
      edit do
        field :email
        field :superadmin_role
        field :first_name
        field :last_name
        field :events
        field :points
      end
      #  field :events
      #end
      #create do
      #  field
      create do
        field :email do
          required true
        end
        field :password do
          required true
        end
        field :superadmin_role
        field :user_role do
          required true
        end
        field :first_name do
          required true
        end
        field :last_name do
          required true
        end
        field :events
        field :points

      end
    end

    config.model Event do
      list do
        field :EventName
        field :Date
        field :Location
        field :users
      end
      show do
        field :EventName
        field :Date
        field :Location
        field :Description
        field :point_value
        field :photoLink
        field :users
      end
      create do
        field :EventName do
          required true
        end
        field :Date do
          required true
        end
        field :Location do
          required true
        end
        field :Description do
          required true
        end
        field :point_value do
          required true
        end
        field :photoLink
        field :users
      end

      config.model Reward do
        list do
          field :EventName
          field :Date
          field :Location
          field :Description
        end

        create do
          field :EventName do
            required true
          end
          field :Date do
            required true
          end
          field :Location do
            required true
          end
          field :Description do
            required true
          end
          field :point_value do
            required true
          end
        end
      end

      config.model 'ActiveStorage::Blob' do
        visible false
      end
      config.model 'ActiveStorage::Attachment' do
        visible false
      end

  end


  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end

def custom_label_method
  "#{first_name}"
end
