python lambda/script running in account 12345 as "dev_ops" role
needs to access cloudwatch tags in account 98765
needs to assume "dev_ops" role in account 98765

- do not taint the iam of the oringal method running in 12345
- return to account 12345 with the tags from account 98765

# some arns to use
arn:aws:iam::12345:role/dev_ops
arn:aws:iam::98765:role/dev_ops

arn:aws:cloudwatch:us-east-1:98765:alarm:something-is-wrong