require 'rails_helper'

RSpec.describe Project, type: :model do
  context "Name analyzing" do
    it "is fewer than 64 characters?" do
      obiekt_project1 = create(:project)
      expect(obiekt_project1.name.size).to be < 64
    end
  end
end