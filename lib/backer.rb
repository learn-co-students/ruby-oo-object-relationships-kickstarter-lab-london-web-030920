class Backer

attr_reader :name 

def initialize(name)
    @name = name 
end 

def back_project(project)
    ProjectBacker.new(project, self )
end 

# def backo   
#     ProjectBacker.all.select{|backer|backer.backer == self}
# end 

def backed_projects
   backo = ProjectBacker.all.select{|backer|backer.backer == self}

# ProjectBacker.all.select{|backer|backer.backer == self}

backo.map{|projectbacker|projectbacker.project}



end

end 