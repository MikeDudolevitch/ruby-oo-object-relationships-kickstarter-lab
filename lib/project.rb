class Project
    attr_accessor :title, :backer
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        back = ProjectBacker.all.select do |obj|
            obj.project == self
        end
        back.collect do |obj|
            obj.backer
        end
    end
end