require 'spec_helper'

describe "media/new" do
  before(:each) do
    assign(:medium, stub_model(Medium,
      :name => "MyString",
      :type => "",
      :size => 1,
      :service_request => nil,
      :user => nil
    ).as_new_record)
  end

  it "renders new medium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", media_path, "post" do
      assert_select "input#medium_name[name=?]", "medium[name]"
      assert_select "input#medium_type[name=?]", "medium[type]"
      assert_select "input#medium_size[name=?]", "medium[size]"
      assert_select "input#medium_service_request[name=?]", "medium[service_request]"
      assert_select "input#medium_user[name=?]", "medium[user]"
    end
  end
end
