# terraform-aws-platform-interview

## Instructions

- initialize a `~/.terraform.rc` file with credentials
```hcl
credentials "app.terraform.io" {
  token = "<YOUR_TOKEN>"
}
```
- switch to your personal workspace
```bash
$ terraform init
$ terraform workspace select <your_name>
```

TODO:
- make an s3 bucket that will contain sensitive data
- make sns topic and wire it to s3
- cloudwatch alarm that will scream and shout when any data is dropped to s3 bucket
