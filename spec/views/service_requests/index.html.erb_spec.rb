require 'spec_helper'

describe "service_requests/index" do
  before(:each) do
    assign(:service_requests, [
      stub_model(ServiceRequest,
        :geolat => "Geolat",
        :geolng => "Geolng",
        :address => "Address",
        :desc => "MyText",
        :title => "Title",
        :state => "State"
      ),
      stub_model(ServiceRequest,
        :geolat => "Geolat",
        :geolng => "Geolng",
        :address => "Address",
        :desc => "MyText",
        :title => "Title",
        :state => "State"
      )
    ])
  end

  it "renders a list of service_requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Geolat".to_s, :count => 2
    assert_select "tr>td", :text => "Geolng".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
