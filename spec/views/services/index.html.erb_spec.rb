require 'spec_helper'

describe "services/index" do
  before(:each) do
    assign(:services, [
      stub_model(Service,
        :name => "Name",
        :logo => "Logo",
        :description => "MyText",
        :rank => 1,
        :contact_address => "Contact Address",
        :contact_email => "Contact Email",
        :contact_phone => "Contact Phone",
        :service_type => nil
      ),
      stub_model(Service,
        :name => "Name",
        :logo => "Logo",
        :description => "MyText",
        :rank => 1,
        :contact_address => "Contact Address",
        :contact_email => "Contact Email",
        :contact_phone => "Contact Phone",
        :service_type => nil
      )
    ])
  end

  it "renders a list of services" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Address".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Phone".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
