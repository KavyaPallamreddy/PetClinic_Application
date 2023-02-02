resource "aws_instance" "jenkins_server" {
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = var.ec2_instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = ["${aws_security_group.allow1_port.id}"]
  tags = {
    "Name" = "jenkins_server"
    }
  
  connection {
        type = "ssh"
        host = "${self.public_ip}"
        user = "ec2-user"
        password = ""
        private_key = file("private-key/terraform-key.pem")
  }  
  
  provisioner "remote-exec" {
        inline = [
          "sudo amazon-linux-extras install ansible2 -y",
          "sudo yum install git -y",
          "git clone https://github.com/KavyaPallamreddy/jenkins_setup_ansible.git /tmp/Jenkins_ansibe_role",
          "ansible-playbook  /tmp/Jenkins_ansibe_role/playbook.yaml"

        ]
      }
  # Adding Envinronment Variables to Bash_Profile
  user_data              = file("Adding-Environement-Variables.sh")
      }
      








 

  
  

  
  
  
 
  