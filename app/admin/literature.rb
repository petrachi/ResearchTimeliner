ActiveAdmin.register Literature do
  permit_params @resource.attribute_names.map(&:to_sym)
end
