locals {
  frontend_east = join("-", tolist([var.project-name, "Frontend-East"]))
  frontend_west = join("-", tolist([var.project-name, "Frontend-West"]))
  backend_east  = join("-", tolist([var.project-name, "Backend-East"]))
  backend_west  = join("-", tolist([var.project-name, "Backend-West"]))
}
