terraform { 
backend "s3" { 
bucket = "jenkins-nataliya-dev" 
key = "vet/us-east-2/sharedtools/dev/jenkins.tfstate" 
region = "us-east-2" 
  } 
} 
