require 'rails_helper'

RSpec.describe "public_speakers/index", type: :view do
  before(:each) do
    assign(:public_speakers, [
      PublicSpeaker.create!(),
      PublicSpeaker.create!()
    ])
  end

  it "renders a list of public_speakers" do
    render
  end
end
