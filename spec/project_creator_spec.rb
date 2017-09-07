require('project_creator')
require('rspec')
require('pry')
require('fileutils')


describe("#project_creator")do
  it("checking to see if new file is created")do
  test = ProjectCreator.new("myproject")
      FileUtils.cd("../myproject"){
      expect(FileUtils.pwd()).to(eq("/Users/Guest/Desktop/myproject"))
    }
  end
  it("creates lib folder within the root folder") do
    FileUtils.cd("../myproject/lib"){
      expect(FileUtils.pwd()).to(eq("/Users/Guest/Desktop/myproject/lib"))
    }
  end
end
