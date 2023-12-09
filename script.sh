#!/bin/bash -x



create_project_directory(){
     project_dir="$PWD/$1"
     mkdir -p "$project_dir"
 
    #Creating subdirectories within the project directory
      directories=("docs" "src" "data" "results")
     for directory in "${directories[@]}"; do           
     dir_path="project_dir/ $directory"
     mkdir -p "$dir_path"
  done

  echo "project directory structure for '$1' has been created."
}


#script prompt project name
read -p "Enter the project name:"  project_name
create_project_directory "project_name"

      read -p "Do you want to end the script? (y/n):" end_script
       if [[$end_script == "y" ]]; then 
           echo "Script ended."
      else  
          echo "continue with other operations..."
      fi



    
create_bash_starter_file() {
    #check if the target directory exits
    if [ ! -d "$1" ]; then 
       echo "Directory '$1' does'nt exits. Cannot create the Bash starter file."
       exit 1
   fi
#setting file and path name
     file_name="project.sh"
     file_path="$1/$file_name"

#check if the file already exits
     if [ -f "$file_path" ]; then
         echo "Bash starter file '$file_path' already exists."
   exit 1
fi

#create the bash starter file
      echo "#!/bin/bash" >> "$file_path"
      echo "echo 'Hello, world!' " >> "file_path"
      chmod +x "$file_path"

     echo  "Bash starter file '$file_path' has been created."

}
 
create_bash_starter_file "project_name"
 

