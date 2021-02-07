bharathkumarraju@R77-NB193 Demo17_local-exec % terraform apply -auto-approve
null_resource.command3: Creating...
null_resource.command4: Creating...
null_resource.command2: Creating...
null_resource.command4: Provisioning with 'local-exec'...
null_resource.command3: Provisioning with 'local-exec'...
null_resource.command2: Provisioning with 'local-exec'...
null_resource.command1: Creating...
null_resource.command3 (local-exec): Executing: ["python" "-c" "print('Hello World from python!')"]
null_resource.command4 (local-exec): Executing: ["/bin/sh" "-c" "echo $NAME1 $NAME2 $NAME3 >> log.txt"]
null_resource.command1: Provisioning with 'local-exec'...
null_resource.command2 (local-exec): Executing: ["/bin/sh" "-c" "ping -c 5 www.google.com"]
null_resource.command1 (local-exec): Executing: ["/bin/sh" "-c" "echo Terraform START: $(date) >> log.txt"]
null_resource.command4: Creation complete after 0s [id=7755249918979494701]
null_resource.command2 (local-exec): PING www.google.com (172.217.194.99): 56 data bytes
null_resource.command2 (local-exec): 64 bytes from 172.217.194.99: icmp_seq=0 ttl=107 time=8.443 ms
null_resource.command3 (local-exec): Hello World from python!
null_resource.command1: Creation complete after 0s [id=8366328705000395116]
null_resource.command3: Creation complete after 0s [id=3132309986273350139]
null_resource.command2 (local-exec): 64 bytes from 172.217.194.99: icmp_seq=1 ttl=107 time=11.900 ms
null_resource.command2 (local-exec): 64 bytes from 172.217.194.99: icmp_seq=2 ttl=107 time=4.983 ms
aws_instance.bk_server: Creating...
null_resource.command2 (local-exec): 64 bytes from 172.217.194.99: icmp_seq=3 ttl=107 time=10.342 ms
null_resource.command2 (local-exec): 64 bytes from 172.217.194.99: icmp_seq=4 ttl=107 time=7.820 ms

null_resource.command2 (local-exec): --- www.google.com ping statistics ---
null_resource.command2 (local-exec): 5 packets transmitted, 5 packets received, 0.0% packet loss
null_resource.command2 (local-exec): round-trip min/avg/max/stddev = 4.983/8.698/11.900/2.349 ms
null_resource.command2: Creation complete after 4s [id=7156888991141390736]
aws_instance.bk_server: Still creating... [10s elapsed]
aws_instance.bk_server: Provisioning with 'local-exec'...
aws_instance.bk_server (local-exec): Executing: ["/bin/sh" "-c" "echo 172.31.24.248 >> log.txt "]
aws_instance.bk_server: Creation complete after 13s [id=i-0e095c5d88b1a42f4]
null_resource.command5: Creating...
null_resource.command5: Provisioning with 'local-exec'...
null_resource.command5 (local-exec): Executing: ["/bin/sh" "-c" "echo Terraform FINISH: $(date) >> log.txt"]
null_resource.command5: Creation complete after 0s [id=4102338758571060828]

Apply complete! Resources: 6 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo17_local-exec %


