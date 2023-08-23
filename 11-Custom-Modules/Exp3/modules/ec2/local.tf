locals { 
    frontend = join("-", tolist([ var.project-name, "Ec2"]))
}
