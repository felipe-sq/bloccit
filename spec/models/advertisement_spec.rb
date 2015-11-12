require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let (:my_advertisement) { Advertisement.create!(title: "New Ad Title", copy: "New Ad Copy", price: "New Ad Price")}

  describe "attributes" do
    it "should respond to title" do
      expect(my_advertisement).to respond_to(:title)
    end

    it "should respond to copy" do
      expect(my_advertisement).to respond_to(:copy)
    end

    it "should respond to price" do
      expect(my_advertisement).to respond_to(:price)
    end
  end
end
