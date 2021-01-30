bharathkumarraju@R77-NB193 Demo8_outputs % terraform apply
aws_security_group.general: Refreshing state... [id=sg-0fba26de3b9c112df]
aws_instance.db: Refreshing state... [id=i-0af33447e72a36052]
aws_instance.app: Refreshing state... [id=i-0a4e24cf0a4cd4773]
aws_instance.web: Refreshing state... [id=i-07416e6068ee7cbec]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

app_ip = 172.31.41.231
bharath_sg_id = sg-0fba26de3b9c112df
db_ip = 172.31.45.30
web_ip = 172.31.37.153
bharathkumarraju@R77-NB193 Demo8_outputs %

----------------------------------------------------------------------------------------:

bharathkumarraju@R77-NB193 Demo8_outputs % terraform apply
aws_security_group.general: Refreshing state... [id=sg-0fba26de3b9c112df]
aws_instance.db: Refreshing state... [id=i-0af33447e72a36052]
aws_instance.app: Refreshing state... [id=i-0a4e24cf0a4cd4773]
aws_instance.web: Refreshing state... [id=i-07416e6068ee7cbec]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

app_ip = 172.31.41.231
bharath_sg_id = sg-0fba26de3b9c112df
db_ip = 172.31.45.30
list_all_instance_ids = [
  "i-07416e6068ee7cbec",
  "i-0a4e24cf0a4cd4773",
  "i-0af33447e72a36052",
]
web_ip = 172.31.37.153
bharathkumarraju@R77-NB193 Demo8_outputs %



bharathkumarraju@R77-NB193 Demo8_outputs % terraform destroy -auto-approve
aws_security_group.general: Refreshing state... [id=sg-0fba26de3b9c112df]
aws_instance.db: Refreshing state... [id=i-0af33447e72a36052]
aws_instance.app: Refreshing state... [id=i-0a4e24cf0a4cd4773]
aws_instance.web: Refreshing state... [id=i-07416e6068ee7cbec]
aws_instance.web: Destroying... [id=i-07416e6068ee7cbec]
aws_instance.web: Still destroying... [id=i-07416e6068ee7cbec, 10s elapsed]
aws_instance.web: Still destroying... [id=i-07416e6068ee7cbec, 20s elapsed]
aws_instance.web: Still destroying... [id=i-07416e6068ee7cbec, 30s elapsed]
aws_instance.web: Still destroying... [id=i-07416e6068ee7cbec, 40s elapsed]
aws_instance.web: Destruction complete after 40s
aws_instance.app: Destroying... [id=i-0a4e24cf0a4cd4773]
aws_instance.app: Still destroying... [id=i-0a4e24cf0a4cd4773, 10s elapsed]
aws_instance.app: Still destroying... [id=i-0a4e24cf0a4cd4773, 20s elapsed]
aws_instance.app: Still destroying... [id=i-0a4e24cf0a4cd4773, 30s elapsed]
aws_instance.app: Still destroying... [id=i-0a4e24cf0a4cd4773, 40s elapsed]
aws_instance.app: Still destroying... [id=i-0a4e24cf0a4cd4773, 50s elapsed]
aws_instance.app: Destruction complete after 51s
aws_instance.db: Destroying... [id=i-0af33447e72a36052]
aws_instance.db: Still destroying... [id=i-0af33447e72a36052, 10s elapsed]
aws_instance.db: Destruction complete after 19s
aws_security_group.general: Destroying... [id=sg-0fba26de3b9c112df]
aws_security_group.general: Destruction complete after 1s

Destroy complete! Resources: 4 destroyed.
bharathkumarraju@R77-NB193 Demo8_outputs %
