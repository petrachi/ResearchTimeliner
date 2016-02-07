class Relation < ActiveRecord::Base
  belongs_to :investigator, polymorphic: true
  belongs_to :relative, polymorphic: true
  has_many :references, as: :referencee

  def investigator= value
    String === value or return super
    self.investigator_type, self.investigator_id = value.split("-")
  end

  def relative= value
    String === value or return super
    self.relative_type, self.relative_id = value.split("-")
  end
end
