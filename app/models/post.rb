class Post < ActiveRecord::Base

 belongs_to :users

  validates :title,
  length: {in: 10..100},
  presence: true,
  on: :create

  validates :link,
  presence: true,
  on: :create
  
end
