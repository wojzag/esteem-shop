require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdmin
    module Config
        module Actions
            class AddKeys < RailsAdmin::Config::Actions::Base
                RailsAdmin::Config::Actions.register(self)
                
                register_instance_option :root? do
                    true
                end
                
                register_instance_option :breadcrumb_parent do
                    nil
                end
                
                register_instance_option :controller do
                    proc do
                        @test = 'Ciąg testowy'
                        
                        render @action.template_name
                    end
                end
                
                register_instance_option :link_icon do
                    'icon-plus'
                end
            end
        end
    end
end

