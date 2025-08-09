region         = "us-east-2"
cluster_name   = "devops-eks-cluster"

private_subnet_ids = [
  "subnet-0eee41b1645019518",
  "subnet-0c1adf9b4b86caec0"
]

desired_capacity = 2
min_size         = 1
max_size         = 3

