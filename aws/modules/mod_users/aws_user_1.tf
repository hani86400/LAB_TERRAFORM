
variable "inp_username" {
  type    = list(string)
}

resource "aws_iam_user" "userdemovar1" {
  count = length(var.inp_username)
  name  = element(var.inp_username, count.index)
}

output "user_arn" {
  value = aws_iam_user.userdemovar1.*.arn
}



