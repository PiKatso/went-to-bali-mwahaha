require 'rails_helper'

describe Order do
  it { should have_many :order_items }
  it { should belong_to :user }

  # it { should validate_presence_of :total_price }
  # it { should validate_numericality_of :total_price }

  # it "should accept calc_total before save" do
  #
  # end
end
