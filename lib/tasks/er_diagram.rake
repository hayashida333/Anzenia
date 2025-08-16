namespace :er do
  desc "Generate ER diagram in PlantUML format and PNG"
  task generate: :environment do
    output_dir = Rails.root.join("doc", "er_diagrams")
    FileUtils.mkdir_p(output_dir)

    puml_file = output_dir.join("er_diagram.puml")

    system("bundle exec erd --file=#{puml_file} --format=plantuml")
    system("java -jar ~/tools/plantuml.jar #{puml_file}")

    puts "✅ ER図生成完了: #{output_dir}"
  end
end
