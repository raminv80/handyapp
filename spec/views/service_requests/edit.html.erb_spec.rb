require 'spec_helper'

describe "service_requests/edit" do
  before(:each) do
    @service_request = assign(:service_request, stub_model(ServiceRequest,
      :geolat => "MyString",
      :geolng => "MyString",
      :address => "MyString",
      :desc => "MyText",
      :title => "MyString",
      :state => "MyString"
    ))
  end

  it "renders the edit service_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_request_path(@service_request), "post" do
      assert_select "input#service_request_geolat[name=?]", "service_request[geolat]"
      assert_select "input#service_request_geolng[name=?]", "service_request[geolng]"
      assert_select "input#service_request_address[name=?]", "service_request[address]"
      assert_select "textarea#service_request_desc[name=?]", "service_request[desc]"
      assert_select "input#service_request_title[name=?]", "service_request[title]"
      assert_select "input#service_request_state[name=?]", "service_request[state]"
    end
  end
end
