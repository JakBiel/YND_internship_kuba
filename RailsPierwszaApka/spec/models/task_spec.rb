require 'rails_helper'

RSpec.describe Task, type: :model do
  context "by analyzing various parameters" do
    let(:task) { create(:task) }

    context "Parameter <<name>>" do
      it "is fulled with any kind of a name" do
        expect(task.name).not_to be_nil
      end
      it "is name that is not shorter than 6 characters" do
        expect(task.name.size).to be >= 6
      end
      #
      #it "is name that is not shorter than 6 characters; test using model validation code" do
      #  expect(task.name).to be_valid
      #end
    end

    context "Parameter <<description>>" do
      it "is fulled with any kind of a description" do
        expect(task.description).not_to be_nil
      end
      #it "is a text" do
      #  expect(task.description).to be_kind_of(String)
      #end
    end

    context "Parameter <<date>>" do
      it "is fulled with any kind of a date" do
        expect(task.due_date).not_to be_nil
      end
      #it "has a proper date format" do
      #  expect(task.due_date).to be_kind_of(Date)
      #end
    end

    context "Parameter <<position>>" do
      it "is fulled with any kind of a position" do
        expect(task.position).not_to be_nil
      end

      it "is above 0" do
        expect(task.position).to be > 0
      end
      #
      #it "is above 0, uses model validation code" do
      #  expect(task.position).to be_valid
      #end
    end

    context "Parameter <<done_status>>" do
      it "is fulled with any kind of a done_status" do
        expect(task.done_status).not_to be_nil
      end

      #it "checks if it is a boolean type" do
      #  expect(task.done_status).to be_kind_of(FalseClass).or be_kind_of(TrueClass)
      #end

      it "checks if it is a boolean value of false" do
        expect(task.done_status).to be == false
      end

      it "checks if it is valid" do
        expect(task).to be_valid
      end
    end

  end
end
