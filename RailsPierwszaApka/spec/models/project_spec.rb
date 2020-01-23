require 'rails_helper'

RSpec.describe Project, type: :model do
  context "<<Description>> parameter" do
    let(:project) { create(:project) }
    it "should be made of fewer than 64 characters" do
      expect(project.description.size).to be < 64
    end
    it "should be the same as string <<Test>>" do
      expect(project.description).to be == "Test"
    end
    it "should contain string element <<Te>>" do
      expect(project.description).to include("Te")
    end
  end
end

