require 'rails_helper'

RSpec.describe "public_speakers/edit", type: :view do
  let(:congregation) { create :congregation }

  before(:each) do
    @public_speaker = assign(:public_speaker, PublicSpeaker.create!(
      congregation_id: congregation.id
    ))
  end

  it "renders the edit public_speaker form" do
    render

    assert_select "form[action=?][method=?]", public_speaker_path(@public_speaker), "post" do
    end
  end
end
