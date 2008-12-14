# make sure we're running inside Merb
if defined?(Merb::Plugins)

  require File.dirname(__FILE__) / 'merb_mobile' / 'mobile'

  # Merb gives you a Merb::Plugins.config hash...feel free to put your stuff in your piece of it
  Merb::Plugins.config[:merb_mobile] = {
  }
  
  Merb::BootLoader.before_app_loads do
    # require code that must be loaded before the application
  end
  
  Merb::BootLoader.after_app_loads do
    Merb.add_mime_type(:mobile, :to_html, %w[text/html])
  end
  
  Merb::Plugins.add_rakefiles "merb_mobile/merbtasks"
  
  Merb::Controller.send(:include, Merb::Mobile)
end
