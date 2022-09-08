class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaraunts, through: :reviews
  end