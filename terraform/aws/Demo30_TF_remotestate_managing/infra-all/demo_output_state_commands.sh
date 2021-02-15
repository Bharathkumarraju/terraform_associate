bharathkumarraju@R77-NB193 infra-all % terraform state show aws_eip.prod-ip1
# aws_eip.prod-ip1:
resource "aws_eip" "prod-ip1" {
    domain               = "vpc"
    id                   = "eipalloc-03f87908798f3f08e"
    network_border_group = "eu-west-2"
    public_dns           = "ec2-18-135-248-203.eu-west-2.compute.amazonaws.com"
    public_ip            = "18.135.248.203"
    public_ipv4_pool     = "amazon"
    vpc                  = true
}
bharathkumarraju@R77-NB193 infra-all %


bharathkumarraju@R77-NB193 infra-all % terraform state show aws_instance.web-prod
# aws_instance.web-prod:
resource "aws_instance" "web-prod" {
    ami                          = "ami-098828924dc89ea4a"
    arn                          = "arn:aws:ec2:eu-west-2:172586632398:instance/i-0e4c2d216169da16e"
    associate_public_ip_address  = true
    availability_zone            = "eu-west-2a"
    cpu_core_count               = 1
    cpu_threads_per_core         = 2
    disable_api_termination      = false
    ebs_optimized                = false
    get_password_data            = false
    hibernation                  = false
    id                           = "i-0e4c2d216169da16e"
    instance_state               = "running"
    instance_type                = "t3.micro"
    ipv6_address_count           = 0
    ipv6_addresses               = []
    monitoring                   = false
    primary_network_interface_id = "eni-0ecd189c7bc86d794"
    private_dns                  = "ip-172-31-4-38.eu-west-2.compute.internal"
    private_ip                   = "172.31.4.38"
    public_dns                   = "ec2-18-132-10-251.eu-west-2.compute.amazonaws.com"
    public_ip                    = "18.132.10.251"
    secondary_private_ips        = []
    security_groups              = [
        "WebServer SG Prod",
    ]
    source_dest_check            = true
    subnet_id                    = "subnet-14f0976f"
    tags                         = {
        "Name"  = "PROD WebServer"
        "Owner" = "BD"
    }
    tenancy                      = "default"
    user_data                    = "d3a17b1073c7a1ee899823d8580660dff7b4297a"
    vpc_security_group_ids       = [
        "sg-001d3d67d9c7fcfe7",
    ]

    credit_specification {
        cpu_credits = "unlimited"
    }

    enclave_options {
        enabled = false
    }

    metadata_options {
        http_endpoint               = "enabled"
        http_put_response_hop_limit = 1
        http_tokens                 = "optional"
    }

    root_block_device {
        delete_on_termination = true
        device_name           = "/dev/xvda"
        encrypted             = false
        iops                  = 100
        tags                  = {}
        throughput            = 0
        volume_id             = "vol-073482e5a1d2b679f"
        volume_size           = 8
        volume_type           = "gp2"
    }
}
bharathkumarraju@R77-NB193 infra-all %


bharathkumarraju@R77-NB193 infra-all % terraform state list
data.aws_ami.latest_amazon_linux
data.aws_availability_zones.available
aws_eip.prod-ip1
aws_eip.prod-ip2
aws_eip.stag-ip1
aws_eip.stag-ip2
aws_eip.stag-ip3
aws_instance.web-prod
aws_instance.web-stag
aws_security_group.web-prod
aws_security_group.web-stag
bharathkumarraju@R77-NB193 infra-all %

bharathkumarraju@R77-NB193 infra-all % terraform state pull > terraform.state.backup.bharath
bharathkumarraju@R77-NB193 infra-all %


bharathkumarraju@R77-NB193 infra-all % terraform state mv aws_eip.prod-ip1 aws_eip.prod-ipaddress1
Move "aws_eip.prod-ip1" to "aws_eip.prod-ipaddress1"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all % terraform state mv aws_eip.prod-ip2 aws_eip.prod-ipaddress2
Move "aws_eip.prod-ip2" to "aws_eip.prod-ipaddress2"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all %


bharathkumarraju@R77-NB193 infra-all % terraform apply -auto-approve
aws_eip.stag-ip2: Refreshing state... [id=eipalloc-0f06e9014a28c0cd2]
aws_eip.stag-ip3: Refreshing state... [id=eipalloc-0747d284d8bbc3380]
aws_eip.prod-ipaddress2: Refreshing state... [id=eipalloc-0c3ac2ae2fde11190]
aws_eip.stag-ip1: Refreshing state... [id=eipalloc-099cf11d45005d8c0]
aws_security_group.web-stag: Refreshing state... [id=sg-0358fbeeac484264a]
aws_eip.prod-ipaddress1: Refreshing state... [id=eipalloc-03f87908798f3f08e]
aws_security_group.web-prod: Refreshing state... [id=sg-001d3d67d9c7fcfe7]
aws_instance.web-stag: Refreshing state... [id=i-03d1b96555578f826]
aws_instance.web-prod: Refreshing state... [id=i-0e4c2d216169da16e]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 infra-all %


