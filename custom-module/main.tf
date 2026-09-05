module "web_server" {
  source        = "./module"   # module ka path
  ami_id        = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  instance_name = "dev-server"
  key_name      = "my-key"
}