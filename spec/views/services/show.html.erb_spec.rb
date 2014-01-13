require 'spec_helper'

describe "services/show" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :name => "Name",
      :logo => "Logo",
      :description => "MyText",
      :rank => 1,
      :contact_address => "Contact Address",
      :contact_email => "Contact Email",
      :contact_phone => "Contact Phone",
      :service_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Contact Address/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/Contact Phone/)
    expect(rendered).to match(//)
  end
end
