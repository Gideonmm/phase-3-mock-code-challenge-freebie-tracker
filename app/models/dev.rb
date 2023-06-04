class Dev < ApplicationRecord
    has_many :freebies
    has_many :companies, through: :freebies
  
    def
  