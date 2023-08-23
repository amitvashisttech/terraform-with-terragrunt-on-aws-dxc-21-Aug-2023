```
[amitvashist@ip-172-31-41-220 ~]$ terraform console
>  2 + 4 
6
> 10 - 6 
4
> 5 * 3
15
> 30 / 5 
6
> 

> contains(tolist(["orange", "mango", "apple"]), "kiwi") 
false
> contains(tolist(["orange", "mango", "apple"]), "mango") 
true
> 

> length("a,b,c")
5
> length(split(",", "a,b,c"))
3
> 

> length(tomap({"key1"="Value1"}))
1
> 

> merge(tomap({"key1"="Value1"}), tomap({"Key2"="Vaule2"}))
tomap({
  "Key2" = "Vaule2"
  "key1" = "Value1"
})
> max(5,17,19) 
19
> min(5,17,19) 
5
> 

> timestamp()
"2023-08-23T05:31:02Z"
> 

> formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
"23 Aug 2023 05:31 UTC"
> formatdate("DD MMM YYYY", timestamp())
"23 Aug 2023"
> formatdate("DD MMM", timestamp())
"23 Aug"
> 

> 

> timeadd(timestamp(), "30m")
"2023-08-23T06:02:17Z"
> timestamp()
"2023-08-23T05:32:23Z"
> timeadd(timestamp(), "10m")
"2023-08-23T05:42:31Z"
> 

> 




> lookup({a="Hello Terraform", b="How are you terraform"}, "a", "plese use the right key")
"Hello Terraform"
> lookup({a="Hello Terraform", b="How are you terraform"}, "b", "plese use the right key")
"How are you terraform"
> lookup({a="Hello Terraform", b="How are you terraform"}, "c", "plese use the right key")
"plese use the right key"
> lookup({a="Hello Terraform", b="How are you terraform"}, "1", "plese use the right key")
"plese use the right key"
> lookup({a="Hello Terraform", b="How are you terraform"}, "100", "plese use the right key")
"plese use the right key"
> 

> 

> join(",", ["apple", "mango", "kiwi"])
"apple,mango,kiwi"
> join("-", ["apple", "mango", "kiwi"])
"apple-mango-kiwi"
> join("", ["apple", "mango", "kiwi"])
"applemangokiwi"
> 

> 

> replace("apple-mango-kiwi", "-", "+")
"apple+mango+kiwi"
> replace("apple-mango-kiwi", "-", " ")
"apple mango kiwi"
> 

> upper("applemangokiwi")
"APPLEMANGOKIWI"
> lower("APPLEMANGOKIWI")
"applemangokiwi"
> 

> replace("welecome to the terraform", "the", "the world of")
"welecome to the world of terraform"


> base64encode("Welcome to the world of Terraform Functions") 
"V2VsY29tZSB0byB0aGUgd29ybGQgb2YgVGVycmFmb3JtIEZ1bmN0aW9ucw=="
> base64decode("V2VsY29tZSB0byB0aGUgd29ybGQgb2YgVGVycmFmb3JtIEZ1bmN0aW9ucw==") 
"Welcome to the world of Terraform Functions"
>  

```