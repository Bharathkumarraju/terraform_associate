bharathkumarraju@R77-NB193 Demo17_local-exec % terraform plan

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # null_resource.command1 will be created
  + resource "null_resource" "command1" {
      + id = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo17_local-exec %


bharathkumarraju@R77-NB193 Demo17_local-exec % terraform apply -auto-approve
null_resource.command1: Creating...
null_resource.command1: Provisioning with 'local-exec'...
null_resource.command1 (local-exec): Executing: ["/bin/sh" "-c" "echo Terraform START: $(date) $(cal) >> log.txt"]
null_resource.command1 (local-exec): cal: setlocale: Bad file descriptor
null_resource.command1: Creation complete after 0s [id=8835562841944634359]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo17_local-exec % terraform apply -auto-approve
null_resource.command1: Refreshing state... [id=8835562841944634359]
null_resource.command4: Creating...
null_resource.command2: Creating...
null_resource.command3: Creating...
null_resource.command4: Provisioning with 'local-exec'...
null_resource.command3: Provisioning with 'local-exec'...
null_resource.command2: Provisioning with 'local-exec'...
null_resource.command4 (local-exec): Executing: ["/bin/sh" "-c" "echo $NAME1 $NAME2 $NAME3 >> log.txt"]
null_resource.command2 (local-exec): Executing: ["/bin/sh" "-c" "ping -c 5 www.google.com"]
null_resource.command3 (local-exec): Executing: ["python" "-c" "print('Hello World from python!')"]
null_resource.command4: Creation complete after 0s [id=8735231978194767454]
null_resource.command2 (local-exec): PING www.google.com (172.217.194.147): 56 data bytes
null_resource.command2 (local-exec): 64 bytes from 172.217.194.147: icmp_seq=0 ttl=55 time=7.422 ms
null_resource.command3 (local-exec): Hello World from python!
null_resource.command3: Creation complete after 0s [id=3030333963311886800]
null_resource.command2 (local-exec): 64 bytes from 172.217.194.147: icmp_seq=1 ttl=55 time=4.900 ms
null_resource.command2 (local-exec): 64 bytes from 172.217.194.147: icmp_seq=2 ttl=55 time=14.667 ms
aws_instance.bk_server: Creating...
null_resource.command2 (local-exec): 64 bytes from 172.217.194.147: icmp_seq=3 ttl=55 time=5.669 ms
null_resource.command2 (local-exec): 64 bytes from 172.217.194.147: icmp_seq=4 ttl=55 time=10.202 ms

null_resource.command2 (local-exec): --- www.google.com ping statistics ---
null_resource.command2 (local-exec): 5 packets transmitted, 5 packets received, 0.0% packet loss
null_resource.command2 (local-exec): round-trip min/avg/max/stddev = 4.900/8.572/14.667/3.551 ms
null_resource.command2: Creation complete after 4s [id=3534292020140809351]
aws_instance.bk_server: Still creating... [10s elapsed]
aws_instance.bk_server: Provisioning with 'local-exec'...
aws_instance.bk_server (local-exec): Executing: ["/bin/sh" "-c" "echo 172.31.17.141 >> log.txt "]
aws_instance.bk_server: Creation complete after 14s [id=i-0217337ba9fde1aaf]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo17_local-exec % terraform apply -auto-approve
null_resource.command2: Refreshing state... [id=3534292020140809351]
null_resource.command3: Refreshing state... [id=3030333963311886800]
null_resource.command1: Refreshing state... [id=8835562841944634359]
null_resource.command4: Refreshing state... [id=8735231978194767454]
aws_instance.bk_server: Refreshing state... [id=i-0217337ba9fde1aaf]
null_resource.command5: Creating...
null_resource.command5: Provisioning with 'local-exec'...
null_resource.command5 (local-exec): Executing: ["/bin/sh" "-c" "echo Terraform FINISH: $(date) >> log.txt"]
null_resource.command5: Creation complete after 0s [id=9222720267960544394]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo17_local-exec % terraform destroy -auto-approve
null_resource.command5: Destroying... [id=9222720267960544394]
null_resource.command5: Destruction complete after 0s
null_resource.command3: Destroying... [id=3030333963311886800]
null_resource.command2: Destroying... [id=3534292020140809351]
null_resource.command1: Destroying... [id=8835562841944634359]
null_resource.command4: Destroying... [id=8735231978194767454]
null_resource.command3: Destruction complete after 0s
null_resource.command4: Destruction complete after 0s
null_resource.command1: Destruction complete after 0s
null_resource.command2: Destruction complete after 0s
aws_instance.bk_server: Destroying... [id=i-0217337ba9fde1aaf]
aws_instance.bk_server: Still destroying... [id=i-0217337ba9fde1aaf, 1m0s elapsed]
aws_instance.bk_server: Destruction complete after 1m0s

Destroy complete! Resources: 6 destroyed.
bharathkumarraju@R77-NB193 Demo17_local-exec %






