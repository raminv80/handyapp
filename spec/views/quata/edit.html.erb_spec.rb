require 'spec_helper'

describe "quata/edit" do
  before(:each) do
    @quatum = assign(:quatum, stub_model(Quatum,
      :service_request => nil,
      :user => nil,
      :amount => 1.5,
      :duration => 1,
      :state => "MyString"
    ))
  end

  it "renders the edit quatum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quatum_path(@quatum), "post" do
      assert_select "input#quatum_service_request[name=?]", "quatum[service_request]"
      assert_select "input#quatum_user[name=?]", "quatum[user]"
      assert_select "input#quatum_amount[name=?]", "quatum[amount]"
      assert_select "input#quatum_duration[name=?]", "quatum[duration]"
      assert_select "input#quatum_state[name=?]", "quatum[state]"
    end
  end
end
