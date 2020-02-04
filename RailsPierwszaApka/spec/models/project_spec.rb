require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:project) { create(:project) }

  context "<<Name>> parameter" do

    it "should contains at least 6 characters" do
      expect(project.name.size).to be >= 6
    end

  end

  context "<<Description>> parameter" do

    it "should be made of fewer than 64 characters" do
      expect(project.description.size).to be < 64
    end

    it "should be the same as string <<Test>>" do
      expect(project.description).to be == "Test"
    end

    it "should contain string element <<Te>>" do
      expect(project.description).to include("Te")
    end

    it "should by type of <<Text>> (or <<String>>, because IDK how to check type of Text in RSPEC tests" do
      expect(project.description).to be_kind_of(String)
    end
  end
end

