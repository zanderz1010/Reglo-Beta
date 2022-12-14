# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord

  has_many(:gifts, { :class_name => "Gift", :foreign_key => "category_id", :dependent => :destroy })

end
