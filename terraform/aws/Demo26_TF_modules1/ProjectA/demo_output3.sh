bharathkumarraju@R77-NB193 ProjectA % terraform destroy -auto-approve
module.bharath_vpc.aws_vpc.main: Refreshing state... [id=vpc-05db25a34abd9314f]
module.bharath_vpc_production.aws_vpc.main: Refreshing state... [id=vpc-0478f606e9001d593]
module.bharath_vpc_staging.aws_vpc.main: Refreshing state... [id=vpc-0524d228ba03566e8]
module.bharath_vpc_production.data.aws_availability_zones.available: Refreshing state...
module.bharath_vpc_staging.data.aws_availability_zones.available: Refreshing state...
module.bharath_vpc.data.aws_availability_zones.available: Refreshing state...
module.bharath_vpc.aws_eip.nat[1]: Refreshing state... [id=eipalloc-03b7ff2fa0967ff79]
module.bharath_vpc.aws_eip.nat[0]: Refreshing state... [id=eipalloc-0022a97cf8e628a80]
module.bharath_vpc_production.aws_eip.nat[0]: Refreshing state... [id=eipalloc-0a088ea731a47a397]
module.bharath_vpc.aws_eip.nat[2]: Refreshing state... [id=eipalloc-0b51f9e18ffc4f542]
module.bharath_vpc_production.aws_eip.nat[1]: Refreshing state... [id=eipalloc-0ed40cb75665ae8f5]
module.bharath_vpc_production.aws_eip.nat[2]: Refreshing state... [id=eipalloc-0c47fc242dd60c41c]
module.bharath_vpc_production.aws_internet_gateway.main: Refreshing state... [id=igw-0f82873747a153709]
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-0e3128acc1b05abce]
module.bharath_vpc_production.aws_subnet.private_subnets[0]: Refreshing state... [id=subnet-06a529a3491c0a37b]
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Refreshing state... [id=subnet-04b852c3bfe2c7114]
module.bharath_vpc_production.aws_subnet.private_subnets[2]: Refreshing state... [id=subnet-09483ce60433227b3]
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-0c186a29e231b226d]
module.bharath_vpc_production.aws_subnet.private_subnets[1]: Refreshing state... [id=subnet-0c05495e1986be1b7]
module.bharath_vpc.aws_internet_gateway.main: Refreshing state... [id=igw-06b917355f834afbd]
module.bharath_vpc.aws_subnet.public_subnets[2]: Refreshing state... [id=subnet-089a3ee58eda2997b]
module.bharath_vpc.aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-0c3fbb9d6be8b9f23]
module.bharath_vpc.aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-0b04690157cb546be]
module.bharath_vpc.aws_subnet.private_subnets[1]: Refreshing state... [id=subnet-06bb6bec92921c1f2]
module.bharath_vpc.aws_subnet.private_subnets[0]: Refreshing state... [id=subnet-0888fbcf20d053f1c]
module.bharath_vpc.aws_subnet.private_subnets[2]: Refreshing state... [id=subnet-0d23138b69e41ada3]
module.bharath_vpc_production.aws_route_table.public_subnets: Refreshing state... [id=rtb-0d929404def616064]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Refreshing state... [id=nat-0de71a85e4e8b1322]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Refreshing state... [id=nat-0b6dc26c553d42689]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Refreshing state... [id=nat-0b0890be8d0b32c66]
module.bharath_vpc.aws_route_table.public_subnets: Refreshing state... [id=rtb-06f78f46b637b3b8b]
module.bharath_vpc.aws_nat_gateway.nat[2]: Refreshing state... [id=nat-0fcae179736cc14b0]
module.bharath_vpc.aws_nat_gateway.nat[0]: Refreshing state... [id=nat-0cfbfdb61898583f1]
module.bharath_vpc.aws_nat_gateway.nat[1]: Refreshing state... [id=nat-08228ea0617babf57]
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-099e3add19506b503]
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Refreshing state... [id=rtbassoc-09181e2e5885f4c47]
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-0e7011e5096ba0f9a]
module.bharath_vpc_staging.aws_internet_gateway.main: Refreshing state... [id=igw-037f9aef001d80037]
module.bharath_vpc_staging.aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-04692042a94f588bc]
module.bharath_vpc_staging.aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-08f73f0e7a9700079]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Refreshing state... [id=rtb-0be8eb6bb67423439]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-0e22fedd46b35ca75]
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-0c8a71b9ae30d7fa0]
module.bharath_vpc.aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-0c505b6b401ed1990]
module.bharath_vpc.aws_route_table_association.public_routes[2]: Refreshing state... [id=rtbassoc-0e7a8916e62a2060d]
module.bharath_vpc.aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-039b5744949fe4178]
module.bharath_vpc.aws_route_table.private_subnets[2]: Refreshing state... [id=rtb-03f966964677f7a53]
module.bharath_vpc.aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-050319a8a88b44432]
module.bharath_vpc.aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-0b73120bcf0a48e36]
module.bharath_vpc_staging.aws_route_table.public_subnets: Refreshing state... [id=rtb-0b4cd158ba6281ad0]
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Refreshing state... [id=rtbassoc-09b4b10ebc61abd8b]
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-0c560381c367a1459]
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-074a28e53f0763b06]
module.bharath_vpc_staging.aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-06eec84fa90df1164]
module.bharath_vpc_staging.aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-007ac490e13b45e8f]
module.bharath_vpc.aws_route_table_association.private_routes[2]: Refreshing state... [id=rtbassoc-09ad3b9909ececab8]
module.bharath_vpc.aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-08ace975f737caa11]
module.bharath_vpc.aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-044f585ec8c83b037]
module.bharath_vpc_staging.aws_route_table_association.public_routes[1]: Destroying... [id=rtbassoc-06eec84fa90df1164]
module.bharath_vpc.aws_route_table_association.public_routes[0]: Destroying... [id=rtbassoc-0c505b6b401ed1990]
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Destroying... [id=rtbassoc-074a28e53f0763b06]
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Destroying... [id=rtbassoc-0e7011e5096ba0f9a]
module.bharath_vpc.aws_route_table_association.private_routes[0]: Destroying... [id=rtbassoc-08ace975f737caa11]
module.bharath_vpc.aws_route_table_association.public_routes[2]: Destroying... [id=rtbassoc-0e7a8916e62a2060d]
module.bharath_vpc.aws_route_table_association.private_routes[2]: Destroying... [id=rtbassoc-09ad3b9909ececab8]
module.bharath_vpc.aws_route_table_association.public_routes[1]: Destroying... [id=rtbassoc-039b5744949fe4178]
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Destroying... [id=rtbassoc-09b4b10ebc61abd8b]
module.bharath_vpc_staging.aws_route_table_association.public_routes[0]: Destroying... [id=rtbassoc-007ac490e13b45e8f]
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Destruction complete after 1s
module.bharath_vpc.aws_route_table_association.public_routes[1]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Destruction complete after 1s
module.bharath_vpc_staging.aws_route_table_association.public_routes[1]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Destruction complete after 1s
module.bharath_vpc.aws_route_table_association.private_routes[0]: Destruction complete after 1s
module.bharath_vpc.aws_route_table_association.private_routes[2]: Destruction complete after 1s
module.bharath_vpc.aws_route_table_association.public_routes[2]: Destruction complete after 1s
module.bharath_vpc_staging.aws_route_table_association.public_routes[0]: Destruction complete after 1s
module.bharath_vpc.aws_route_table_association.private_routes[1]: Destroying... [id=rtbassoc-044f585ec8c83b037]
module.bharath_vpc.aws_route_table_association.public_routes[0]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Destroying... [id=rtbassoc-09181e2e5885f4c47]
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Destroying... [id=rtbassoc-099e3add19506b503]
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Destroying... [id=rtbassoc-0c560381c367a1459]
module.bharath_vpc_staging.aws_subnet.public_subnets[0]: Destroying... [id=subnet-08f73f0e7a9700079]
module.bharath_vpc_staging.aws_subnet.public_subnets[1]: Destroying... [id=subnet-04692042a94f588bc]
module.bharath_vpc_staging.aws_route_table.public_subnets: Destroying... [id=rtb-0b4cd158ba6281ad0]
module.bharath_vpc.aws_route_table.public_subnets: Destroying... [id=rtb-06f78f46b637b3b8b]
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Destruction complete after 1s
module.bharath_vpc.aws_route_table_association.private_routes[1]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table.public_subnets: Destroying... [id=rtb-0d929404def616064]
module.bharath_vpc_production.aws_subnet.private_subnets[0]: Destroying... [id=subnet-06a529a3491c0a37b]
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Destroying... [id=rtb-0c8a71b9ae30d7fa0]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Destroying... [id=rtb-0be8eb6bb67423439]
module.bharath_vpc_production.aws_subnet.private_subnets[2]: Destroying... [id=subnet-09483ce60433227b3]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Destroying... [id=rtb-0e22fedd46b35ca75]
module.bharath_vpc_staging.aws_subnet.public_subnets[0]: Destruction complete after 3s
module.bharath_vpc_staging.aws_subnet.public_subnets[1]: Destruction complete after 3s
module.bharath_vpc_production.aws_subnet.private_subnets[1]: Destroying... [id=subnet-0c05495e1986be1b7]
module.bharath_vpc.aws_route_table.private_subnets[0]: Destroying... [id=rtb-050319a8a88b44432]
module.bharath_vpc_staging.aws_route_table.public_subnets: Destruction complete after 3s
module.bharath_vpc.aws_route_table.private_subnets[1]: Destroying... [id=rtb-0b73120bcf0a48e36]
module.bharath_vpc.aws_route_table.public_subnets: Destruction complete after 3s
module.bharath_vpc.aws_route_table.private_subnets[2]: Destroying... [id=rtb-03f966964677f7a53]
module.bharath_vpc_production.aws_subnet.private_subnets[0]: Destruction complete after 3s
module.bharath_vpc.aws_subnet.private_subnets[2]: Destroying... [id=subnet-0d23138b69e41ada3]
module.bharath_vpc_production.aws_subnet.private_subnets[2]: Destruction complete after 3s
module.bharath_vpc.aws_subnet.private_subnets[1]: Destroying... [id=subnet-06bb6bec92921c1f2]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Destruction complete after 4s
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Destruction complete after 4s
module.bharath_vpc_production.aws_route_table.public_subnets: Destruction complete after 4s
module.bharath_vpc.aws_subnet.private_subnets[0]: Destroying... [id=subnet-0888fbcf20d053f1c]
module.bharath_vpc_staging.aws_internet_gateway.main: Destroying... [id=igw-037f9aef001d80037]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Destruction complete after 4s
module.bharath_vpc.aws_internet_gateway.main: Destroying... [id=igw-06b917355f834afbd]
module.bharath_vpc_production.aws_internet_gateway.main: Destroying... [id=igw-0f82873747a153709]
module.bharath_vpc_production.aws_subnet.private_subnets[1]: Destruction complete after 2s
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Destroying... [id=nat-0b6dc26c553d42689]
module.bharath_vpc.aws_route_table.private_subnets[1]: Destruction complete after 8s
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Destroying... [id=nat-0de71a85e4e8b1322]
module.bharath_vpc.aws_route_table.private_subnets[2]: Destruction complete after 8s
module.bharath_vpc.aws_route_table.private_subnets[0]: Destruction complete after 8s
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Destroying... [id=nat-0b0890be8d0b32c66]
module.bharath_vpc.aws_nat_gateway.nat[2]: Destroying... [id=nat-0fcae179736cc14b0]
module.bharath_vpc.aws_subnet.private_subnets[1]: Destruction complete after 7s
module.bharath_vpc.aws_nat_gateway.nat[1]: Destroying... [id=nat-08228ea0617babf57]
module.bharath_vpc.aws_subnet.private_subnets[2]: Destruction complete after 7s
module.bharath_vpc.aws_nat_gateway.nat[0]: Destroying... [id=nat-0cfbfdb61898583f1]
module.bharath_vpc.aws_subnet.private_subnets[0]: Destruction complete after 8s
module.bharath_vpc_staging.aws_internet_gateway.main: Still destroying... [id=igw-037f9aef001d80037, 10s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-0f82873747a153709, 10s elapsed]
module.bharath_vpc.aws_internet_gateway.main: Still destroying... [id=igw-06b917355f834afbd, 10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0b6dc26c553d42689, 10s elapsed]
module.bharath_vpc_staging.aws_internet_gateway.main: Destruction complete after 12s
module.bharath_vpc_staging.aws_vpc.main: Destroying... [id=vpc-0524d228ba03566e8]
module.bharath_vpc_staging.aws_vpc.main: Destruction complete after 1s
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-0de71a85e4e8b1322, 10s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0fcae179736cc14b0, 10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still destroying... [id=nat-0b0890be8d0b32c66, 10s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[1]: Still destroying... [id=nat-08228ea0617babf57, 10s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[0]: Still destroying... [id=nat-0cfbfdb61898583f1, 10s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-0f82873747a153709, 20s elapsed]
module.bharath_vpc.aws_internet_gateway.main: Still destroying... [id=igw-06b917355f834afbd, 20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0b6dc26c553d42689, 20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-0de71a85e4e8b1322, 20s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0fcae179736cc14b0, 20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still destroying... [id=nat-0b0890be8d0b32c66, 20s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[1]: Still destroying... [id=nat-08228ea0617babf57, 20s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[0]: Still destroying... [id=nat-0cfbfdb61898583f1, 20s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-0f82873747a153709, 30s elapsed]
module.bharath_vpc.aws_internet_gateway.main: Still destroying... [id=igw-06b917355f834afbd, 30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0b6dc26c553d42689, 30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-0de71a85e4e8b1322, 30s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0fcae179736cc14b0, 30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still destroying... [id=nat-0b0890be8d0b32c66, 30s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[1]: Still destroying... [id=nat-08228ea0617babf57, 30s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[0]: Still destroying... [id=nat-0cfbfdb61898583f1, 30s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-0f82873747a153709, 40s elapsed]
module.bharath_vpc.aws_internet_gateway.main: Still destroying... [id=igw-06b917355f834afbd, 40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0b6dc26c553d42689, 40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-0de71a85e4e8b1322, 40s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0fcae179736cc14b0, 40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still destroying... [id=nat-0b0890be8d0b32c66, 40s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[1]: Still destroying... [id=nat-08228ea0617babf57, 40s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[0]: Still destroying... [id=nat-0cfbfdb61898583f1, 40s elapsed]
module.bharath_vpc.aws_internet_gateway.main: Still destroying... [id=igw-06b917355f834afbd, 50s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-0f82873747a153709, 50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0b6dc26c553d42689, 50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Destruction complete after 46s
module.bharath_vpc.aws_nat_gateway.nat[0]: Destruction complete after 46s
module.bharath_vpc.aws_nat_gateway.nat[1]: Destruction complete after 46s
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-0de71a85e4e8b1322, 50s elapsed]
module.bharath_vpc.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0fcae179736cc14b0, 50s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-0f82873747a153709, 1m0s elapsed]
module.bharath_vpc.aws_internet_gateway.main: Still destroying... [id=igw-06b917355f834afbd, 1m0s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0b6dc26c553d42689, 1m0s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Destruction complete after 57s
module.bharath_vpc.aws_internet_gateway.main: Destruction complete after 1m3s
module.bharath_vpc.aws_nat_gateway.nat[2]: Destruction complete after 58s
module.bharath_vpc.aws_subnet.public_subnets[2]: Destroying... [id=subnet-089a3ee58eda2997b]
module.bharath_vpc.aws_eip.nat[2]: Destroying... [id=eipalloc-0b51f9e18ffc4f542]
module.bharath_vpc.aws_eip.nat[1]: Destroying... [id=eipalloc-03b7ff2fa0967ff79]
module.bharath_vpc.aws_subnet.public_subnets[0]: Destroying... [id=subnet-0c3fbb9d6be8b9f23]
module.bharath_vpc.aws_subnet.public_subnets[1]: Destroying... [id=subnet-0b04690157cb546be]
module.bharath_vpc.aws_eip.nat[0]: Destroying... [id=eipalloc-0022a97cf8e628a80]
module.bharath_vpc.aws_subnet.public_subnets[2]: Destruction complete after 2s
module.bharath_vpc.aws_eip.nat[1]: Destruction complete after 2s
module.bharath_vpc.aws_subnet.public_subnets[1]: Destruction complete after 2s
module.bharath_vpc.aws_subnet.public_subnets[0]: Destruction complete after 2s
module.bharath_vpc.aws_eip.nat[0]: Destruction complete after 2s
module.bharath_vpc.aws_eip.nat[2]: Destruction complete after 2s
module.bharath_vpc.aws_vpc.main: Destroying... [id=vpc-05db25a34abd9314f]
module.bharath_vpc.aws_vpc.main: Destruction complete after 2s
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-0f82873747a153709, 1m10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0b6dc26c553d42689, 1m10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Destruction complete after 1m13s
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Destroying... [id=subnet-0e3128acc1b05abce]
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Destroying... [id=subnet-0c186a29e231b226d]
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Destroying... [id=subnet-04b852c3bfe2c7114]
module.bharath_vpc_production.aws_eip.nat[0]: Destroying... [id=eipalloc-0a088ea731a47a397]
module.bharath_vpc_production.aws_eip.nat[2]: Destroying... [id=eipalloc-0c47fc242dd60c41c]
module.bharath_vpc_production.aws_eip.nat[1]: Destroying... [id=eipalloc-0ed40cb75665ae8f5]
module.bharath_vpc_production.aws_internet_gateway.main: Destruction complete after 1m15s
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Destruction complete after 3s
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Destruction complete after 3s
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Destruction complete after 3s
module.bharath_vpc_production.aws_vpc.main: Destroying... [id=vpc-0478f606e9001d593]
module.bharath_vpc_production.aws_eip.nat[1]: Destruction complete after 3s
module.bharath_vpc_production.aws_eip.nat[0]: Destruction complete after 3s
module.bharath_vpc_production.aws_eip.nat[2]: Destruction complete after 3s
module.bharath_vpc_production.aws_vpc.main: Destruction complete after 1s

Destroy complete! Resources: 55 destroyed.
bharathkumarraju@R77-NB193 ProjectA %