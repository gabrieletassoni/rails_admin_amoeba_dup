require "rails_admin_amoeba_dup/engine"

module RailsAdminAmoebaDup
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class AmoebaDup < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :object_level do
          true
        end

        # This ensures the action only shows up for Users
        register_instance_option :visible? do
          # visible only if authorized and if the object has a defined method
          authorized? && bindings[:object].class.amoeba.enabled
        end

        # You may or may not want pjax for your action
        register_instance_option :pjax? do
          false
        end

        register_instance_option :member do
          true
        end

        register_instance_option :controller do
          Proc.new do
            copy = @object.amoeba_dup
            copy.save

            redirect_to back_or_index
          end
        end

        register_instance_option :link_icon do
          'icon-copy fa fa-files-o'
        end
      end
    end
  end
end
