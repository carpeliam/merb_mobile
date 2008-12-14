require File.dirname(__FILE__) + '/spec_helper'

describe "merb_mobile" do
  before(:each) do
    Merb::Router.prepare do |r|
      r.default_routes
    end
  end
  
  it "should serve regular pages if request is not a mobile request" do
    controller = dispatch_to(Main, :action)
    controller.content_type.should == :html
    controller.body.should =~ /normal html action/
  end
  
  it "should serve mobile pages if request is a mobile request" do
    controller = dispatch_to(Main, :action, {}, {Merb::Const::HTTP_USER_AGENT => 'nokia'})
    controller.content_type.should == :mobile
    controller.body.should =~ /mobile action/
  end
  
  it "should serve mobile pages if 'always' is true" do
    controller = dispatch_to(Mobile, :action)
    controller.content_type.should == :mobile
    controller.body.should =~ /mobile action/
  end
end
