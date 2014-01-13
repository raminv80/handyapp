require 'spec_helper'

describe "service_requests/new" do
  before(:each) do
    assign(:service_request, stub_model(ServiceRequest,
      :geolat => "MyString",
      :geolng => "MyString",
      :address => "MyString",
      :desc => "MyText",
      :title => "MyString",
      :state => "MyString"
    ).as_new_record)
  end

  it "renders new service_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_requests_path, "post" do
      assert_select "input#service_request_geolat[name=?]", "service_request[geolat]"
      assert_select "input#service_request_geolng[name=?]", "service_request[geolng]"
      assert_select "input#service_request_address[name=?]", "service_request[address]"
      assert_select "textarea#service_request_desc[name=?]", "service_request[desc]"
      assert_select "input#service_request_title[name=?]", "service_request[title]"
      assert_select "input#service_request_state[name=?]", "service_request[state]"
    end
  end
end
