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

describe GmpsController do

  # This should return the minimal set of attributes required to create a valid
  # Gmp. As you add validations to Gmp, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GmpsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all gmps as @gmps" do
      gmp = Gmp.create! valid_attributes
      get :index, {}, valid_session
      assigns(:gmps).should eq([gmp])
    end
  end

  describe "GET show" do
    it "assigns the requested gmp as @gmp" do
      gmp = Gmp.create! valid_attributes
      get :show, {:id => gmp.to_param}, valid_session
      assigns(:gmp).should eq(gmp)
    end
  end

  describe "GET new" do
    it "assigns a new gmp as @gmp" do
      get :new, {}, valid_session
      assigns(:gmp).should be_a_new(Gmp)
    end
  end

  describe "GET edit" do
    it "assigns the requested gmp as @gmp" do
      gmp = Gmp.create! valid_attributes
      get :edit, {:id => gmp.to_param}, valid_session
      assigns(:gmp).should eq(gmp)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Gmp" do
        expect {
          post :create, {:gmp => valid_attributes}, valid_session
        }.to change(Gmp, :count).by(1)
      end

      it "assigns a newly created gmp as @gmp" do
        post :create, {:gmp => valid_attributes}, valid_session
        assigns(:gmp).should be_a(Gmp)
        assigns(:gmp).should be_persisted
      end

      it "redirects to the created gmp" do
        post :create, {:gmp => valid_attributes}, valid_session
        response.should redirect_to(Gmp.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved gmp as @gmp" do
        # Trigger the behavior that occurs when invalid params are submitted
        Gmp.any_instance.stub(:save).and_return(false)
        post :create, {:gmp => {}}, valid_session
        assigns(:gmp).should be_a_new(Gmp)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Gmp.any_instance.stub(:save).and_return(false)
        post :create, {:gmp => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested gmp" do
        gmp = Gmp.create! valid_attributes
        # Assuming there are no other gmps in the database, this
        # specifies that the Gmp created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Gmp.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => gmp.to_param, :gmp => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested gmp as @gmp" do
        gmp = Gmp.create! valid_attributes
        put :update, {:id => gmp.to_param, :gmp => valid_attributes}, valid_session
        assigns(:gmp).should eq(gmp)
      end

      it "redirects to the gmp" do
        gmp = Gmp.create! valid_attributes
        put :update, {:id => gmp.to_param, :gmp => valid_attributes}, valid_session
        response.should redirect_to(gmp)
      end
    end

    describe "with invalid params" do
      it "assigns the gmp as @gmp" do
        gmp = Gmp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Gmp.any_instance.stub(:save).and_return(false)
        put :update, {:id => gmp.to_param, :gmp => {}}, valid_session
        assigns(:gmp).should eq(gmp)
      end

      it "re-renders the 'edit' template" do
        gmp = Gmp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Gmp.any_instance.stub(:save).and_return(false)
        put :update, {:id => gmp.to_param, :gmp => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested gmp" do
      gmp = Gmp.create! valid_attributes
      expect {
        delete :destroy, {:id => gmp.to_param}, valid_session
      }.to change(Gmp, :count).by(-1)
    end

    it "redirects to the gmps list" do
      gmp = Gmp.create! valid_attributes
      delete :destroy, {:id => gmp.to_param}, valid_session
      response.should redirect_to(gmps_url)
    end
  end

end