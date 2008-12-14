module Merb
  module Mobile
    MOBILE_USER_AGENTS =  'palm|palmos|palmsource|iphone|blackberry|nokia|phone|midp|mobi|pda|' +
                          'wap|java|nokia|hand|symbian|chtml|wml|ericsson|lg|audiovox|motorola|' +
                          'samsung|sanyo|sharp|telit|tsm|mobile|mini|windows ce|smartphone|' +
                          '240x320|320x320|mobileexplorer|j2me|sgh|portable|sprint|vodafone|opwv|' +
                          'mot-|sec-|lg-|sie-|up.b|up/'

    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def serves_mobile(always = false)
        before (always) ? :force_mobile : :serve_mobile
      end
    end
    
    private
    def serve_mobile
      self.content_type = :mobile if is_mobile_device?
    end
    
    def force_mobile
      self.content_type = :mobile
    end
    
    def is_mobile_device?
      request.user_agent.to_s.downcase =~ Regexp.new(Merb::Mobile::MOBILE_USER_AGENTS)
    end
  end
end
