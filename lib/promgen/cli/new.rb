class Promgen::CLI::New < Thor::Group
  include Thor::Actions

  argument :project_name

  def self.source_root
    Dir.pwd
  end

  def create_files
    template "#{__dir__}/new/templates/README.md",     "#{project_name}/README.md"
    template "#{__dir__}/new/templates/Gemfile",       "#{project_name}/Gemfile"
    template "#{__dir__}/new/templates/Rakefile",      "#{project_name}/Rakefile"
    template "#{__dir__}/new/templates/config.yml",    "#{project_name}/config.yml"
    template "#{__dir__}/new/templates/config.ru",     "#{project_name}/config.ru"
    template "#{__dir__}/new/templates/dot.gitignore", "#{project_name}/.gitignore"

    Dir.glob "#{__dir__}/new/templates/migrations/*" do |file|
      template file, "#{project_name}/migrations/#{File.basename(file)}"
    end

    Dir.glob "#{__dir__}/new/templates/public/css/*" do |file|
      template file, "#{project_name}/public/css/#{File.basename(file)}"
    end
  end
end
