class Customer < ApplicationRecord
	has_many :payments, as: :ta_duty
end
