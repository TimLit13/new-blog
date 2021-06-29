require 'rails_helper'

describe Tagging do
 
  describe "associations" do

    describe "Should belongs to" do
      it { should belong_to :post }
      it { should belong_to :tag }
    end
  end


end