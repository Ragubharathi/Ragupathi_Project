resource "aws_subnet" "price-public-sub-1" {
    arn                                            = "arn:aws:ec2:ap-south-1:637423383177:subnet/subnet-09a036ad51e9c1285"
    assign_ipv6_address_on_creation                = false
    availability_zone                              = "ap-south-1b"
    availability_zone_id                           = "aps1-az3"
    cidr_block                                     = "150.150.3.0/24"
    customer_owned_ipv4_pool                       = null
    enable_dns64                                   = false
    enable_lni_at_device_index                     = 0
    enable_resource_name_dns_a_record_on_launch    = false
    enable_resource_name_dns_aaaa_record_on_launch = false
    id                                             = "subnet-09a036ad51e9c1285"
    ipv6_cidr_block                                = null
    ipv6_cidr_block_association_id                 = null
    ipv6_native                                    = false
    map_customer_owned_ip_on_launch                = false
    map_public_ip_on_launch                        = false
    outpost_arn                                    = null
    owner_id                                       = "637423383177"
    private_dns_hostname_type_on_launch            = "ip-name"
    tags                                           = {
        "Name" = "price-public-sub_1"
    }
    tags_all                                       = {
        "Name" = "price-public-sub_1"
    }
    vpc_id                                         = "vpc-02fe99c3d622d3b79"
}
