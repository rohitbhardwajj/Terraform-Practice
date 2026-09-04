resource "aws_key_pair" "login-key" {
  key_name   = "deployer-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILRkxQBxGFqtwmtilOvE89mo5NypZZ2iT326tzIlmFZH rohit_bhardwaj@DESKTOP-GA4NTP1"
}