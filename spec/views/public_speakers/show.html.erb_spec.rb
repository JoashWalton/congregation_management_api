require 'rails_helper'

RSpec.describe "public_speakers/show", type: :view do
  before(:each) do
    @public_speaker = assign(:public_speaker, PublicSpeaker.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
