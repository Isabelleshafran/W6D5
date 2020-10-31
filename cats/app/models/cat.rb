# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  sex         :string(1)        not null
#  name        :string           not null
#  color       :string           not null
#  birth_date  :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    validates :color, inclusion: { in: %w(Orange Tabby Brown White), 
    message: "%{value} is not a valid color" }, presence: true

    validates :sex, inclusion: { in: %w(M F),
    message: "%{value} is not a valid sex"}, presence: true

    has_many :cat_rental_requests
        foreign_key: :cat_id,
        class_name: :CatRentalRequest,
        dependent: :destroy

    COLORS = %w(Orange Tabby Brown White)

    def age
        distance_of_time_in_words_to_now(birth_date)
    end
end
