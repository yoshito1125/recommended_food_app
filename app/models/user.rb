# frozen_string_literal: true

class User < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :likes, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
