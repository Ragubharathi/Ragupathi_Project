resource "aws_subnet" "price-public-sub-1" {
    vpc_id                                         = "vpc-02fe99c3d622d3b79"  
    cidr_block                                     = "150.150.3.0/24"
    id                                             = "subnet-09a036ad51e9c1285"
    map_public_ip_on_launch                        = false
    
    tags_all                                       = {
        "Name" = "price-public-sub_1"
    }
    
}
