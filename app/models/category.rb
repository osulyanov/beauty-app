class Category < ActiveRecord::Base
  has_many :sub_categories, dependent: :destroy

  validates :name, presence: true
end

# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
