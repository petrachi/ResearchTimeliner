[Literature, Person, Thing, Relation, Reference].each do |klass|
  YAML.load_file(Rails.root.join('db/seeds', "#{ klass.name.underscore }.yml")).each do |id, attributes|
    klass.create(attributes)
  end
end
