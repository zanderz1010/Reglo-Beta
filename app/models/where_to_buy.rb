# == Schema Information
#
# Table name: where_to_buys
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gift_id    :integer
#  store_id   :integer
#
class WhereToBuy < ApplicationRecord


  belongs_to(:gift, { :required => true, :class_name => "Gift", :foreign_key => "gift_id" })

  belongs_to(:store, { :required => true, :class_name => "Store", :foreign_key => "store_id" })

end
