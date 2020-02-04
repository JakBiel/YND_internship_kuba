require 'rails_helper'

RSpec.describe ToDoList, type: :model do
  context "by analyzing various parameters; " do
    let(:to_do_list) { create(:to_do_list) }

    context "Parameter <<name>>" do

      it "is fulled with any kind of a name" do
        expect(to_do_list.name).not_to be_nil
      end

      it "is name that is not shorter than 6 characters" do
        expect(to_do_list.name.size).to be >= 6
      end

    end
  end
end
