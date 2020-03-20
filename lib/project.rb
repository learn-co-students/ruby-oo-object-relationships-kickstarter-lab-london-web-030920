class Project

    attr_reader :title
def initialize(title)
    @title = title

end 

def add_backer(backer)
ProjectBacker.new(self, backer)
end 

def backo
ProjectBacker.all.select{|pro|pro.project == self }
end 

def backers
# backo = ProjectBacker.all.select{|pro|pro.project == self }

backo.map{|projectbacker|projectbacker.backer}


end 


end 