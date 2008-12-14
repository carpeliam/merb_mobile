merb\_mobile
===========

Merb plugin that sets content\_type to :mobile if user agent is a mobile phone.

To activate, just add the following in your controller:

    MyController << Merb::Controller
      serves_mobile
    end

...and any request from a mobile phone will be rendered by a mobile template. In
addition to your action.html.erb/action.html.haml templates, you can use
action.mobile.erb/action.mobile.haml templates.

If you want to *always* serve a mobile template regardless of the user agent (suitable for testing, perhaps), you can pass `true` to `serves_mobile`:

    MyController << Merb::Controller
      serves_mobile(true)
    end

...and all requests will use your mobile templates.

Inspired by [hassox's content\_type tutorial](http://merbunity.com/tutorials/9) and [mobile-fu for rails](http://www.intridea.com/2008/7/21/mobilize-your-rails-application-with-mobile-fu).
