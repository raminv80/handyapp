require 'spec_helper'

describe "negotiations/show" do
  before(:each) do
    @negotiation = assign(:negotiation, stub_model(Negotiation,
      :quata => nil,
      :message => "MyText",
      :from => nil,
      :to => nil,
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/State/)
  end
end
