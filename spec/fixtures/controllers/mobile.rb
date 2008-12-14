class Mobile < Merb::Controller
  self._template_root = File.dirname(__FILE__) / '..' / 'views'
  
  serves_mobile(true)
  
  def action
    render
  end
end
