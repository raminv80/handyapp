require 'spec_helper'

describe "quata/show" do
  before(:each) do
    @quatum = assign(:quatum, stub_model(Quatum,
      :service_request => nil,
      :user => nil,
      :amount => 1.5,
      :duration => 1,
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/State/)
  end
end
