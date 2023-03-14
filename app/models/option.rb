# frozen_string_literal: true

class Option < ApplicationRecord
  belongs_to :question
  enum option_type: { introvert: 0, extrovert: 1 }

  validates :title, presence: true
end
