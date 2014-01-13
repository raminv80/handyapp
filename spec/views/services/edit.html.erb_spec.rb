require 'spec_helper'

describe "services/edit" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :name => "MyString",
      :logo => "MyString",
      :description => "MyText",
      :rank => 1,
      :contact_address => "MyString",
      :contact_email => "MyString",
      :contact_phone => "MyString",
      :service_type => nil
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_path(@service), "post" do
      assert_select "input#service_name[name=?]", "service[name]"
      assert_select "input#service_logo[name=?]", "service[logo]"
      assert_select "textarea#service_description[name=?]", "service[description]"
      assert_select "input#service_rank[name=?]", "service[rank]"
      assert_select "input#service_contact_address[name=?]", "service[contact_address]"
      assert_select "input#service_contact_email[name=?]", "service[contact_email]"
      assert_select "input#service_contact_phone[name=?]", "service[contact_phone]"
      assert_select "input#service_service_type[name=?]", "service[service_type]"
    end
  end
end
