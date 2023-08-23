locals { 
    frontend = join("-", tolist([ var.project-name, "frontend"]))
    backend = join("-", tolist([ var.project-name, "backend"]))
    az_east_count = length(data.aws_availability_zones.zone_east.names)
    az_west_count = length(data.aws_availability_zones.zone_west.names)
}
