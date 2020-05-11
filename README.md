# HOW TO INSTALL JENKINS 
![jenkins logo on linux](https://user-images.githubusercontent.com/63379120/81092043-a79ce400-8ec5-11ea-9e3e-b2b9b80b3c55.jpg)


:black_medium_square: Jenkins is a free and open source automation server.

:black_medium_square: It helps automate the parts of software development related to building, testing, and deploying,
 facilitating continuous integration and continuous delivery.
 
 &nbsp;

### PREREQUISITES:
 
   - **1 VPC**
   - **6 Subnets**
     - 3 Private Subents
     - 3 Public Subnets
   - **Public subnets should have IGW attached to it** 
   - **Private subnets should have NG attached to it**
   - **Configure route tables**
   
  &nbsp;
  
  
  
   
    
  ### - To check if everything is configured properly, create ec2 instance, manually,  on public subnet and ping www.google.com
  


![Screen Shot 2020-05-10 at 11 19 26 PM](https://user-images.githubusercontent.com/63379120/81530456-86ede780-9326-11ea-93d7-1c1e42eccb22.png)

 - If everything is successful, you should have proper response &#8593;  :+1:
 
 
&nbsp;
# **TO INSTALL JENKINS ON EC2 INSTANCE, FOLLOW THE STEPS BELOW :arrow_down:** **OR**
## **Please refer to null_resource.tf for more details**

```HCL
provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.jenkins_server.public_ip}"
    }

    inline = [
    ]
```
&nbsp;


 
 **1. Jenkins is a Java application, so the first step is to install Java.**
 
 ```HCL
 "sudo yum install java${var.java_version} -y",
```

**2. The next step is to enable the Jenkins repository.**
 ```HCL
 "curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
```

**3. Add the repository to your system.**
 ```HCL
 "sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
```

**4. Once the repository is enabled, install the latest stable version of Jenkins.**
  ```HCL
"sudo yum install ${var.jenksins_version} -y",
```

**5. After the installation process is completed, start the Jenkins service.**
  ```HCL
 "sudo systemctl start jenkins",
```

**6. Enable the Jenkins service to start on system boot.**
 ```HCL
"sudo systemctl enable jenkins",
```
**7. This inline command string prints the output for Jenkins Initial Administrator Password.**
 ```HCL
"echo -e $(tput setaf 1 )'Jenkins initialAdminPassword: '$(tput sgr0) $(tput setaf 2)`
sudo cat /var/lib/jenkins/secrets/initialAdminPassword`$(tput sgr0)",
```



&nbsp;



# terraform apply -var-file configurations/jenkins.tfvars

![Screen Shot 2020-05-10 at 11 01 27 PM](https://user-images.githubusercontent.com/63379120/81530666-ee0b9c00-9326-11ea-8452-421c845fbf0e.png)



&nbsp;
 # Copy _http://your_ip_or_domain:8080_ from the above output


![Screen Shot 2020-05-10 at 11 11 42 PM](https://user-images.githubusercontent.com/63379120/81530766-201cfe00-9327-11ea-8b4d-212af1e6f4ad.png)






&nbsp;


# To Set Up Jenkins, please follow the prompts

![Screen Shot 2020-05-10 at 11 12 20 PM](https://user-images.githubusercontent.com/63379120/81530793-2f9c4700-9327-11ea-9f47-39221962f8f8.png)

![Screen Shot 2020-05-10 at 11 13 07 PM](https://user-images.githubusercontent.com/63379120/81530801-33c86480-9327-11ea-95f6-b286d8c0cbc2.png)

![Screen Shot 2020-05-10 at 11 14 01 PM](https://user-images.githubusercontent.com/63379120/81530806-36c35500-9327-11ea-9c84-27aeb319f0fd.png)

![Screen Shot 2020-05-10 at 11 14 12 PM](https://user-images.githubusercontent.com/63379120/81530814-39be4580-9327-11ea-9089-f1e7e83ed1f2.png)






&nbsp;

# Jenkins Dashboard

![Screen Shot 2020-05-10 at 11 14 22 PM](https://user-images.githubusercontent.com/63379120/81530840-45117100-9327-11ea-9233-c9a03bad5217.png)

&nbsp;




<img width="685" alt="Screen Shot 2020-05-05 at 3 17 16 PM" src="https://user-images.githubusercontent.com/63379120/81111983-8cd96800-8ee3-11ea-9dc5-b69ce26993f7.png">

