class Workplace < ApplicationRecord
  belongs_to :college
  belongs_to :professor

  validates :college_id, presence: true
  validates :professor_id, presence: true
end

# where is the review form getting generated from?
# who is going to process the create new professor request?
# ^workplace controller might be better suited, so we can associate there right away.