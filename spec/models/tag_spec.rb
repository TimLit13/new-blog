require 'rails_helper'

describe Tag do
  
    describe "associations" do
    describe "Should have many" do
      it { should have_many :taggings }
      it { should have_many :posts }
    end
  end


end