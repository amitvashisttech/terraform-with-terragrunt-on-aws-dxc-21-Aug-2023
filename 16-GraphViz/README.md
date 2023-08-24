
# Instroduction tp GraphViz Utility with Apache. 

## Install Apache & GraphViz Packages

## On Ubuntu Machine 
```
apt-get update -y 
apt-get install apache2 graphviz -y 
```



## On RedHat Machine 
```
yum install httpd graphviz -y 
```

## Go to the Resource Dir. & Genrate Terraform Graph. 
```
cd 04-Graphviz
terraform graph > resource.dot
```

## Open the following URL : "https://dreampuf.github.io/GraphvizOnline/"

## Upload the code on the portal & check the graph.


## OR you can follow the below procdure if you have admin access on the host


## Convert the Resource DOT to SVG Formate.
```
dot resource.dot -Tsvg -o resource.svg
```

## Setup Apache For Hosting Graphviz Images 
```
mkdir -p /var/www/html/Terraform-Images
cp -rf resource.svg /var/www/html/Terraform-Images/01-resource.svg
systemctl restart apache.service / httpd
ip addr 
```

## Now explore the Image in your web browser.