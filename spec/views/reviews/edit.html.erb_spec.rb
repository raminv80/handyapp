require 'spec_helper'

describe "reviews/edit" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :rank => 1,
      :user => nil,
      :service => nil,
      :service_request => nil,
      :message => "MyText"
    ))
  end

  it "renders the edit review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", review_path(@review), "post" do
      assert_select "input#review_rank[name=?]", "review[rank]"
      assert_select "input#review_user[name=?]", "review[user]"
      assert_select "input#review_service[name=?]", "review[service]"
      assert_select "input#review_service_request[name=?]", "review[service_request]"
      assert_select "textarea#review_message[name=?]", "review[message]"
    end
  end
end
