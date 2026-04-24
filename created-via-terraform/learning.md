# Terraform

## Authentication Configuration
If shared files lines are not added to provider block, by default, Terraform will locate these files at $HOME/.aws/config and $HOME/.aws/credentials on Linux.

```bash
provider "aws" {
  region     = "eu-central-1"
  access_key = "TODO"
  secret_key = "TODO"
  #shared_config_files = []
  #shared_credentials_files = []
}
```

Once you configure the aws CLI on the host where you are running terraform, it will automatically or populate the configuration and credential files within $HOME/.aws/config and $HOME/.aws/credentials.

When desired state (code) matches the current state, terraform is showing "No changes."

Apart form mandatory attributes for the resources which you define, there will be other attributes which terraform will automatically fill, like security group in the context of aws and etc., IF they are not mentioned in the desired state (code), then they will be ignored, even if in the current someone is changing them manually. This is why, ou should always explicitly define all desired attributes in our configuration.


### terraform refresh

Is being run automatically as part of terraform plan or terraform apply command.

When this command is being used manually, it can lead to challenging situations. Let's say you change the region for your provider, and then run terraform refresh, it will then empty the configuration from your terraform state file. That is why, in the newer versions of terraform "terraform refesh" is removed or disabled. The "-refresh-only" option for terraform plan and terraform apply was introduced in terraform v.0.15.4


### Terraform vesion vs. provider version

- Provider plugins are released separately from Terraform itself. 
- They have different set of version numbers.
- During terraform init, if version argument is not specified, the most recent provider will be downloaded during initialization.
- For production use, you should constrain the acceptable provider versions via configuration, to ensure that new versions with breaking changes will not be automatically installed.
- For CI/CD pipelines, terraform init runs every time by design.
- That is why to explicitly specify the provider version, so that we have a consistent behavior, regardless from which environment we are running terraform. 

### Arguments for specifying a provider

- >=1.0 (Greater than equal to the version)
- <=1.0 (Less than equal to the version)
- ~>2.0 (Any version in the 2.x range)
- >=2.10,<=2.30 (Any version between 2.10 and 2.30)

- The dependency lock file: ".terraform.lock.hcl" allows to lock a specific version of the provider.
- If a particular provider already has a selection recorded in the lock file, terraform will always re-select that version for installation, even if a newer version has become available.
- You can override that behavior by adding the "-upgrade" option when you run "terraform init"




