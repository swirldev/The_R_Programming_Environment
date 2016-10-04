# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

data("titanic_train")
titanic <- titanic_train
data(worldcup)

.get_course_path <<- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

.pathtofile <<- function(fileName){
  mypath <- file.path(.get_course_path(),
                      "The_R_Programming_Environment", "Data_Manipulation",
                      fileName)
}