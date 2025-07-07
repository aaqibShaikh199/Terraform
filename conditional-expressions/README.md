# Terraform EC2 Instance with Conditional Expression

## 📌 Task Description

**Q:** If I set `env = "prod"`, then a `t3.medium` EC2 instance should be created.  
If I set `stag` or any other environment, then a `t2.nano` instance should be created — this is done using a conditional expression.

---

## ⚙️ How It Works

The EC2 instance type is selected based on the value of the `env` variable using a conditional expression in Terraform:

```hcl
instance_type = var.env == "prod" ? "t3.medium" : "t2.nano"
