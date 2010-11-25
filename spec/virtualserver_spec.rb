require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "virtualserver" do
  
  vs_name = "rspec-test"
  vs_copy = "rspec-test-copy"
  
  before do
    endpoint = "https://zeus:9090/soap"
    user = "api"
    pass = "api"

    @vs = VirtualServerService.new(endpoint, user, pass)
  end
  
  it "should have a driver" do
    @vs.driver.nil?.should == false
  end

  it "should create a virtual server" do  
    vs_info = {
      :protocol => "http",
      :port => "9999",
    }
  
    @vs.create(vs_name, vs_info)    
    @vs.list.include?(vs_name).should == true    
  end

  it "should list the virtual server" do
    @vs.list.include?(vs_name).should == true
  end

  it "should copy the virtual server" do
    @vs.copy(vs_name, vs_copy).nil?.should == true
  end

  it "should delete the original virtual server" do
    @vs.delete(vs_name)
    @vs.list.include?(vs_name).should == false    
  end

  it "should rename the copied virtual server" do
    @vs.copy(vs_copy, vs_name).nil?.should == true
  end

  it "should delete the copied virtual server" do
    @vs.delete(vs_name)
    @vs.list.include?(vs_name).should == false    
  end

end
