locals { 
    frontend = join("-", tolist([ var.project-name, "frontend"]))
    backend = join("-", tolist([ var.project-name, "backend"]))
}
