resource "aws_key_pair" "aws_key_pair_1" {
  key_name   = "my_key_pair_1"
  public_key = file("~/.ssh/id_ed25519.pub")
}
