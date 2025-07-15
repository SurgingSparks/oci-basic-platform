# Basic Platform – Network Stack

This stack provisions the **network layer** of the Basic Platform Showcase in Oracle Cloud Infrastructure (OCI).

## 📜 What it creates
✅ Virtual Cloud Network (VCN)  
✅ Public Subnet  
✅ Internet Gateway  
✅ Route Table for public subnet  

All resources are created in the compartment and region you specify at deploy time.

---

## 🚀 How to deploy
1️⃣ Update the following variables when launching the stack:
- `compartment_ocid` – OCID of the compartment to deploy into  
- `region` – OCI region (e.g., `ap-sydney-1`)

You can either:
- Fill these in on the OCI Resource Manager stack UI
- Or create a `.tfvars` file and pass it in

Example `dev.tfvars`:
```hcl
compartment_ocid = "ocid1.compartment.oc1..your_compartment_ocid"
region           = "ap-sydney-1"
