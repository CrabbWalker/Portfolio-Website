class PagesController < ApplicationController
    def home
        @projects = Project.all
        @twoprojects = Twoproject.all
  end
end
