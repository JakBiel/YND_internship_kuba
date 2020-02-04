require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "by analyzing various parameters; " do
    let(:comment) { create(:comment) }

    context "Parameter <<body>>" do
      it "is fulled with any kind of a name" do
        expect(comment.body).not_to be_nil
      end
      it "is name that is not shorter than 5 characters" do
        expect(comment.body.size).to be > 5
      end
    end
  end
end
