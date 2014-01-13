require 'spec_helper'

describe "reviews/new" do
  before(:each) do
    assign(:review, stub_model(Review,
      :rank => 1,
      :user => nil,
      :service => nil,
      :service_request => nil,
      :message => "MyText"
    ).as_new_record)
  end

  it "renders new review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reviews_path, "post" do
      assert_select "input#review_rank[name=?]", "review[rank]"
      assert_select "input#review_user[name=?]", "review[user]"
      assert_select "input#review_service[name=?]", "review[service]"
      assert_select "input#review_service_request[name=?]", "review[service_request]"
      assert_select "textarea#review_message[name=?]", "review[message]"
    end
  end
end
