# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint           not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CatRentalRequest < ApplicationRecord
    
    validates :status, inclusion: { in: %w(APPROVED DENIED)}, presence: true
    validates :cat_id, :start_date, :end_date, presence: true

    belongs_to :cat
        foreign_key: :cat_id,
        class_name: :Cat

    def overlapping_requests
        overlapping_reqest = CatRentalRequest
            .where.not(start_date: (self.end_date))

            # .where.not("start_date = ? OR start_date = ?")
            # .where.not(start_date: (start_date..end_date))
            # .where.not(start_date: (self.start_date))
    end

    
end
