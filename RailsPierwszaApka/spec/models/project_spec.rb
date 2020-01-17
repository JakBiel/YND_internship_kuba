require 'rails_helper'

RSpec.describe Project, type: :model do
  context "by analyzing <<Description>>" do
    it "should be made of fewer than 64 characters" do
      obiekt_project1 = create(:project)
      expect(obiekt_project1.description.size).to be < 64
    end
    it "should be the same as string <<Test>>" do
      obiekt_project1 = create(:project)
      expect(obiekt_project1.description.to_s) == "Test"
    end
    it "should contain string element <<Te>>" do
      obiekt_project1 = create(:project)
      obiekt_project1.description.should include("Te")
    end
  end
end

