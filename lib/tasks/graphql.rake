namespace :graphql do
  task dump_schema: :environment do
    schema_definition = ServerSchema.to_definition
    schema_path = Rails.root.join("app/graphql/schema.graphql")
    File.write(Rails.root.join(schema_path), schema_definition)
    puts "Updated #{schema_path}"
  end
end
