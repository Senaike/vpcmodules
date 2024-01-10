data "aws_ami" "Ubuntu"{
    most_recent = true

    filter {
      name = "name"
      values = ["ami-0c7217cdde317cfec"]
    }
    owners =  ["Ubuntu"]

}
data "aws_availability_zone" "available" {
    state =  "available"
}