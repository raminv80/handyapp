require 'spec_helper'

describe "negotiations/index" do
  before(:each) do
    assign(:negotiations, [
      stub_model(Negotiation,
        :quata => nil,
        :message => "MyText",
        :from => nil,
        :to => nil,
        :state => "State"
      ),
      stub_model(Negotiation,
        :quata => nil,
        :message => "MyText",
        :from => nil,
        :to => nil,
        :state => "State"
      )
    ])
  end

  it "renders a list of negotiations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
