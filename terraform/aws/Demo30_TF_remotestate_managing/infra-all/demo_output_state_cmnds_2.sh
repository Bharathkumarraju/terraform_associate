bharathkumarraju@R77-NB193 infra-all % terraform state list
data.aws_ami.latest_amazon_linux
data.aws_availability_zones.available
aws_eip.prod-ipaddress1
aws_eip.prod-ipaddress2
aws_eip.stag-ip1
aws_eip.stag-ip2
aws_eip.stag-ip3
aws_instance.web-prod
aws_instance.web-stag
aws_security_group.web-prod
aws_security_group.web-stag
bharathkumarraju@R77-NB193 infra-all %


bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_eip.prod-ipaddress1 aws_eip.prod-ipaddress1
Move "aws_eip.prod-ipaddress1" to "aws_eip.prod-ipaddress1"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_eip.prod-ipaddress2 aws_eip.prod-ipaddress2
Move "aws_eip.prod-ipaddress2" to "aws_eip.prod-ipaddress2"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all %
bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_instance.web-prod aws_instance.web-prod
Move "aws_instance.web-prod" to "aws_instance.web-prod"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all %
bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_security_group.web-prod aws_security_group.web-prod
Move "aws_security_group.web-prod" to "aws_security_group.web-prod"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all %


