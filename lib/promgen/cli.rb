require 'thor'

class Promgen
  class CLI < ::Thor
    require 'promgen/cli/new'
    register(New, "new", "new project", "new project")
  end
end
