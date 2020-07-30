require 'rails_helper'

RSpec.describe "public_speakers/show", type: :view do
  let(:congregation) { create :congregation }

  before(:each) do
    @public_speaker = assign(:public_speaker, PublicSpeaker.create!(
      congregation_id: congregation.id
    ))
  end

  it "renders attributes in <p>" do
    render
  end
end
