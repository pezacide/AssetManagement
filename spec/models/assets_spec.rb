require 'spec_helper'

describe Assets do

  before { @asset = Assets.new(category: "Example category", description: "Example Description", location: "Example location", value:
           "300.00",picture: "example.jpg") }

  subject { @asset }
  
  it { should respond_to (:category) }
  it { should respond_to (:description) }
  it { should respond_to (:location) }
  it { should respond_to (:value) }
  it { should respond_to (:picture) }

  it { should be_valid}

  describe "when category is not present" do
    before { @asset.category = " " }
    it { should_not be_valid }
  end

  describe "when description is not present" do
    before { @asset.description = " " }
    it { should_not be_valid }
  end

  describe "when location is not present" do
    before { @asset.location = " " }
    it { should_not be_valid }
  end

  describe "when value is not present" do
    before { @asset.value = " " }
    it { should_not be_valid }
  end

  describe "when picture is not present" do
    before { @asset.picture = " " }
    it { should_not be_valid }
  end

  describe "when category is too long" do
    before { @asset.category = "a" * 21 }
    it { should_not be _valid }
  end

  describe "when description is too long" do
    before { @asset.description = "a" * 61 }
    it { should_not be _valid }
  end

  describe "when location is too long" do
    before { @asset.location = "a" * 61 }
    it { should_not be _valid }
  end

  describe "when value is too long" do
    before { @asset.value = "a" * 9 }
    it { should_not be _valid }
  end
end
