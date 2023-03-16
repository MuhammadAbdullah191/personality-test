# frozen_string_literal: true

class Question < ApplicationRecord
  has_many :options, dependent: :destroy
  accepts_nested_attributes_for :options

  validates :title, presence: true
  validates :title, uniqueness: true
end
