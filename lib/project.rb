class Project
  attr_reader :name, :backers

  def initialize(name)
    @name = name
    @backers = []
  end

  def add_backer(backer)
    @backers << backer if backer.is_a(Backer)
    backer.back_project(self)
  end
end
