# == Schema Information
#
# Table name: stores
#
#  id         :integer          not null, primary key
#  location   :string
#  website    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Store < ApplicationRecord


  has_many(:where_to_buys, { :class_name => "WhereToBuy", :foreign_key => "store_id", :dependent => :destroy })


end
