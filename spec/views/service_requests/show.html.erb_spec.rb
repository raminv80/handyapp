require 'spec_helper'

describe "service_requests/show" do
  before(:each) do
    @service_request = assign(:service_request, stub_model(ServiceRequest,
      :geolat => "Geolat",
      :geolng => "Geolng",
      :address => "Address",
      :desc => "MyText",
      :title => "Title",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Geolat/)
    expect(rendered).to match(/Geolng/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/State/)
  end
end
