class Backer
    attr_accessor :name, :project
    def initialize(name)
        @name = name
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        pro = ProjectBacker.all.select do |obj|
            obj.backer == self
        end
        pro.collect do |obj|
            obj.project
        end
    end
end