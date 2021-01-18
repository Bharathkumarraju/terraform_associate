

bharathkumarraju@R77-NB193 Demo6_zero_downtime % terraform destroy -auto-approve
aws_security_group.web: Refreshing state... [id=sg-0c5b0ce594edf6229]
aws_instance.web: Refreshing state... [id=i-08be6310a7f80df15]
aws_eip.web: Refreshing state... [id=eipalloc-07510d3eab346b8e2]
aws_eip.web: Destroying... [id=eipalloc-07510d3eab346b8e2]
aws_eip.web: Destruction complete after 1s
aws_instance.web: Destroying... [id=i-08be6310a7f80df15]
aws_instance.web: Still destroying... [id=i-08be6310a7f80df15, 10s elapsed]
aws_instance.web: Still destroying... [id=i-08be6310a7f80df15, 20s elapsed]
aws_instance.web: Destruction complete after 30s
aws_security_group.web: Destroying... [id=sg-0c5b0ce594edf6229]
aws_security_group.web: Destruction complete after 1s

Destroy complete! Resources: 3 destroyed.
