require 'spec_helper'

describe "media/edit" do
  before(:each) do
    @medium = assign(:medium, stub_model(Medium,
      :name => "MyString",
      :type => "",
      :size => 1,
      :service_request => nil,
      :user => nil
    ))
  end

  it "renders the edit medium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", medium_path(@medium), "post" do
      assert_select "input#medium_name[name=?]", "medium[name]"
      assert_select "input#medium_type[name=?]", "medium[type]"
      assert_select "input#medium_size[name=?]", "medium[size]"
      assert_select "input#medium_service_request[name=?]", "medium[service_request]"
      assert_select "input#medium_user[name=?]", "medium[user]"
    end
  end
end
