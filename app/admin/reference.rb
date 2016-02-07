ActiveAdmin.register Reference do
  permit_params @resource.attribute_names.map(&:to_sym)
end
