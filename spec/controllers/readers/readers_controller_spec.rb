require "spec_helper"

describe ReadersController, :type => :controller do
  describe "GET new" do
    let!(:reader) {mock_model("Reader").as_new_record}

    before(:each) do
      Reader.stub(:new).and_return(reader)
      get :new 
    end

    it "renders new template" do
      expect(response).to render_template :new  
    end
    
    it "assigns @reader variable to the view" do
      expect(assigns[:reader]).to eq(reader)  
    end

  end
  describe "POST create" do
    let!(:reader) { stub_model(Reader) }

    before :each do
      Reader.stub(:new).and_return(reader)
    end

    it "sends new message to Reader class" do
      params = {
        "email" => "email@email.com",
        "password" => "pass",
        "password_confirmation" => "pass"
      }
      Reader.should_receive(:new).with(params)
      post :create, reader: params
    end

    it "sends save message to reader model" do
      reader.should_receive(:save)
      post :create
    end

    context "when save message return true" do
      before(:each) do
        reader.stub(:save).and_return(true)
      end
      it "redirects to root url" do
        post :create
        expect(response).to redirect_to root_url 
      end

      it "assign a success flash message" do
        post :create
        expect(flash[:notice]).not_to be_nil  
      end
    end
  end
end