resource "aws_internet_gateway" "IGW_wordpress" {
 vpc_id = aws_vpc.VPC_wordpress.id
 tags = {
        Name = "Internet gateway wordpress"
}
}