require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe QuataController do

  # This should return the minimal set of attributes required to create a valid
  # Quatum. As you add validations to Quatum, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "service_request" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # QuataController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all quata as @quata" do
      quatum = Quatum.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:quata)).to eq([quatum])
    end
  end

  describe "GET show" do
    it "assigns the requested quatum as @quatum" do
      quatum = Quatum.create! valid_attributes
      get :show, {:id => quatum.to_param}, valid_session
      expect(assigns(:quatum)).to eq(quatum)
    end
  end

  describe "GET new" do
    it "assigns a new quatum as @quatum" do
      get :new, {}, valid_session
      expect(assigns(:quatum)).to be_a_new(Quatum)
    end
  end

  describe "GET edit" do
    it "assigns the requested quatum as @quatum" do
      quatum = Quatum.create! valid_attributes
      get :edit, {:id => quatum.to_param}, valid_session
      expect(assigns(:quatum)).to eq(quatum)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Quatum" do
        expect {
          post :create, {:quatum => valid_attributes}, valid_session
        }.to change(Quatum, :count).by(1)
      end

      it "assigns a newly created quatum as @quatum" do
        post :create, {:quatum => valid_attributes}, valid_session
        expect(assigns(:quatum)).to be_a(Quatum)
        expect(assigns(:quatum)).to be_persisted
      end

      it "redirects to the created quatum" do
        post :create, {:quatum => valid_attributes}, valid_session
        expect(response).to redirect_to(Quatum.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved quatum as @quatum" do
        # Trigger the behavior that occurs when invalid params are submitted
        Quatum.any_instance.stub(:save).and_return(false)
        post :create, {:quatum => { "service_request" => "invalid value" }}, valid_session
        expect(assigns(:quatum)).to be_a_new(Quatum)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Quatum.any_instance.stub(:save).and_return(false)
        post :create, {:quatum => { "service_request" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested quatum" do
        quatum = Quatum.create! valid_attributes
        # Assuming there are no other quata in the database, this
        # specifies that the Quatum created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Quatum).to receive(:update).with({ "service_request" => "" })
        put :update, {:id => quatum.to_param, :quatum => { "service_request" => "" }}, valid_session
      end

      it "assigns the requested quatum as @quatum" do
        quatum = Quatum.create! valid_attributes
        put :update, {:id => quatum.to_param, :quatum => valid_attributes}, valid_session
        expect(assigns(:quatum)).to eq(quatum)
      end

      it "redirects to the quatum" do
        quatum = Quatum.create! valid_attributes
        put :update, {:id => quatum.to_param, :quatum => valid_attributes}, valid_session
        expect(response).to redirect_to(quatum)
      end
    end

    describe "with invalid params" do
      it "assigns the quatum as @quatum" do
        quatum = Quatum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Quatum.any_instance.stub(:save).and_return(false)
        put :update, {:id => quatum.to_param, :quatum => { "service_request" => "invalid value" }}, valid_session
        expect(assigns(:quatum)).to eq(quatum)
      end

      it "re-renders the 'edit' template" do
        quatum = Quatum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Quatum.any_instance.stub(:save).and_return(false)
        put :update, {:id => quatum.to_param, :quatum => { "service_request" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested quatum" do
      quatum = Quatum.create! valid_attributes
      expect {
        delete :destroy, {:id => quatum.to_param}, valid_session
      }.to change(Quatum, :count).by(-1)
    end

    it "redirects to the quata list" do
      quatum = Quatum.create! valid_attributes
      delete :destroy, {:id => quatum.to_param}, valid_session
      expect(response).to redirect_to(quata_url)
    end
  end

end
