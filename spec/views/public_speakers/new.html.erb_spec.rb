require 'rails_helper'

RSpec.describe "public_speakers/new", type: :view do
  before(:each) do
    assign(:public_speaker, PublicSpeaker.new())
  end

  it "renders new public_speaker form" do
    render

    assert_select "form[action=?][method=?]", public_speakers_path, "post" do
    end
  end
end
