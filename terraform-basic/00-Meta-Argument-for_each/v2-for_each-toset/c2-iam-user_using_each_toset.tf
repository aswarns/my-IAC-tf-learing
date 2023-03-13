resource "aws_iam_user" "myuser" {

  for_each = toset(["PJack", "PJames", "Tmadhu", "TDave"])
  name     = each.value

}