class Workplace < ApplicationRecord
  belongs_to :college
  belongs_to :professor
end
