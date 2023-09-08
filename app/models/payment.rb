class Payment < ApplicationRecord
	belongs_to :ta_duty, polymorphic: true
end
