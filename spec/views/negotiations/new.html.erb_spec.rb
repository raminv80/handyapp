require 'spec_helper'

describe "negotiations/new" do
  before(:each) do
    assign(:negotiation, stub_model(Negotiation,
      :quata => nil,
      :message => "MyText",
      :from => nil,
      :to => nil,
      :state => "MyString"
    ).as_new_record)
  end

  it "renders new negotiation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", negotiations_path, "post" do
      assert_select "input#negotiation_quata[name=?]", "negotiation[quata]"
      assert_select "textarea#negotiation_message[name=?]", "negotiation[message]"
      assert_select "input#negotiation_from[name=?]", "negotiation[from]"
      assert_select "input#negotiation_to[name=?]", "negotiation[to]"
      assert_select "input#negotiation_state[name=?]", "negotiation[state]"
    end
  end
end
