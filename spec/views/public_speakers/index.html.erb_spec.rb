require 'rails_helper'

RSpec.describe "public_speakers/index", type: :view do
  let(:congregation) { create :congregation }
  
  before(:each) do
    assign(:public_speakers, [
      PublicSpeaker.create!(
        congregation_id: congregation.id
      ),
      PublicSpeaker.create!(
        congregation_id: congregation.id
      )
    ])
  end

  xit "renders a list of public_speakers" do
    render
  end
end
