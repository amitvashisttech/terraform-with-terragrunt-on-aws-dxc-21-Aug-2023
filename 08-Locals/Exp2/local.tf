locals { 
    frontend = join("-", tolist([ var.project-name, "frontend"]))
    backend = join("-", tolist([ var.project-name, "backend"]))
}


locals { 
   backend_tags = {
    Owner = "DevOps Team"
    Project = "Data Platform Development"
    Env     = "Dev"
    Application = "Backend DB"
    Name        = local.backend
   }

}