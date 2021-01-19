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

