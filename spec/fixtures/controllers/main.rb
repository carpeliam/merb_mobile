class Main < Merb::Controller
  self._template_root = File.dirname(__FILE__) / '..' / 'views'
  
  serves_mobile
  
  def action
    render
  end
end
