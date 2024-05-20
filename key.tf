resource "aws_key_pair" "key1" {
    key_name = "testing"
    public_key = file("${path.module}/key.pub")
}
