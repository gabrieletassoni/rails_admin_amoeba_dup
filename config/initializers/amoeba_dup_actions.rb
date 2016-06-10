# begin
#   mod = Required::Module::const_get "TheCoreActions"
#   #It exists
#
# rescue NameError
#   #Doesn't exist
#   Rails.logger.debug "TheCoreActions not exists, cannot module_eval it please add the action to rails_admin.rb initializer."
# end

TheCoreActions.module_eval do
  def amoeba_dup_actions
    amoeba_dup
  end
end
