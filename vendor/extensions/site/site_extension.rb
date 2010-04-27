# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class SiteExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/site"

  # Please use site/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    Spree::BaseController.class_eval do
      helper CalliopeHelper
    end
    Spree::Config.set(:products_per_page => 8)
    Spree::Config.set(:logo => '/images/logo.gif')
    # make your helper avaliable in all views
    # Spree::BaseController.class_eval do
    #   helper YourHelper
    # end
  end
end
