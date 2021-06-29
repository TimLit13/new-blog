require 'rails_helper'

describe Post do
  
  describe "validations" do
    describe 'Should validate presence' do
      it { should validate_presence_of :title }
      it { should validate_presence_of :summary }
      it { should validate_presence_of :body }
      it { should validate_presence_of :image }
    end

    describe 'should validate length' do
      it { should validate_length_of(:title).is_at_least(3).on(:create) }
      it { should validate_length_of(:summary).is_at_least(3).on(:create) }
      it { should validate_length_of(:body).is_at_least(3).on(:create) }
    end
  end

  describe "associations" do
    describe "Should have many" do
      it { should have_many :taggings }
      it { should have_many :tags }
    end

    describe "Should belongs to" do
      it { should belong_to :category }
    end
  end


end