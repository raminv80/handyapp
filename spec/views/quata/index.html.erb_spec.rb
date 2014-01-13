require 'spec_helper'

describe "quata/index" do
  before(:each) do
    assign(:quata, [
      stub_model(Quatum,
        :service_request => nil,
        :user => nil,
        :amount => 1.5,
        :duration => 1,
        :state => "State"
      ),
      stub_model(Quatum,
        :service_request => nil,
        :user => nil,
        :amount => 1.5,
        :duration => 1,
        :state => "State"
      )
    ])
  end

  it "renders a list of quata" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
