class Person < ActiveRecord::Base
  has_many :references, as: :referencee
  has_many :relations, as: :investigator
  has_many :relations, as: :relative

  def title
    name
  end
end
