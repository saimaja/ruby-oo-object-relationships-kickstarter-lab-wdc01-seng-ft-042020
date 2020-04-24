class Project
    
    attr_reader :title
        
    def initialize(title)
        @title = title
    end
        # def project
        #     ProjectBacker.new(project, self)
        # end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pbs = ProjectBacker.all.select do |p|
            p.project == self
        end
        pbs.map do |p|
            p.backer
        end
    end
end
