require 'rails_helper'

describe Category do
  
  describe "validations" do
    describe 'Should validate presence' do
      it { should validate_presence_of :name }
    end
  end

  describe "associations" do
    describe "Should have many" do
      it { should have_many :posts }
    end

  end


end