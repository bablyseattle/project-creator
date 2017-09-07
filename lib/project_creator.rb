require('fileutils')

class ProjectCreator
  def initialize(name)
    @name = name
    FileUtils.mkdir("../" + @name)
    FileUtils.mkdir("../" + @name + "/lib")
  end
end
