require "spec_helper"

describe "readers/new.html.erb" do

  before :each do
    reader = mock_model("Reader").as_new_record.as_null_object
    assigns(:reader, reader)
    reader.stub(:email)
    render
  end

  it "has new_reader form" do
    # reader = mock_model("Reader")
    # assign(:reader, reader)
    # render
    expect(rendered).to have_selector("form#new_reader")  
  end

  it "has reader_email field" do
    expect(rendered).to have_selector("#reader_email")
  end

  it "has reader_password field" 

  it "has reader_password_confirm field" 

  it "has register button" 
end