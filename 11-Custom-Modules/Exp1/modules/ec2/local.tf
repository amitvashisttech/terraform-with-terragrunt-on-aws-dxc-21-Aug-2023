locals { 
    frontend = join("-", tolist([ var.project-name, "frontend"]))
}
