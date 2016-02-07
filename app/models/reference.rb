class Reference < ActiveRecord::Base
  belongs_to :literature
  belongs_to :referencee, polymorphic: true

  def referencee= value
    String === value or return super
    self.referencee_type, self.referencee_id = value.split("-")
  end
end
