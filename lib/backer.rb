class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project if project.is_a?(Project)
    project.add_backer(self) unless project.backers.include?(self)
  end
end
