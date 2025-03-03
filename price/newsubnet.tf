resource "aws_subnet" "price-public-sub-1" {
vpc_id = "aws_vpc.my_vpc.id"
  id = "subnet-09a036ad51e9c1285"
  tags = {
    Name = "Price-publick-sub-1"
  }
}