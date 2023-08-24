## Configure Mutiple AWS Accounts 

### 1. Configure AWS CLI Account Profiles 
```
aws configure --profile jb1
```
```
ACCESS_KEY: 
SECRET_KEY: 
DEFAULT_REGION : 
DEFAULT_FOREMAT : 
```

### 2. List the Profile 
```
aws configure list-profiles
```

### 3. Now we need to update terraform provider configuration to use AWS Profiles
```
provider "aws" {
  region = "us-east-2"
  alias  = "jb1" 
  profile = "jb1"
}
```