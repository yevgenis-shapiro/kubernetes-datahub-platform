![509027189-1d62fa4a-49a4-46c4-96cc-c87b4a99613b](https://github.com/user-attachments/assets/cf8e2e73-3e58-49e7-87dc-f872465f0351)




## Local | DataHub
DataHub is an open source data catalog that enables end-to-end data discovery, data observability, and data governance. This extensive metadata platform allows users to collect, store, and explore metadata from various sources, such as databases, data lakes, streaming platforms, and ML feature stores. DataHub provides many features, a rich UI for searching and browsing metadata, as well as an API for integrating with other applications.


🚀 It’s especially helpful for:
```
✅ Developers who need a fast, disposable Kubernetes cluster on their laptop.
✅ CI pipelines that run Kubernetes integration tests quickly without cloud infrastructure.
✅ Testing multi-node setups or Kubernetes features (networking, scheduling, etc.) locally.
```


🧱  Key Features
```
🐳 Runs entirely on Docker — no need for VM-based solutions like Minikube or K3s.
⚡ Fast startup and teardown — clusters can be created or destroyed in seconds.
🔁 Supports multi-node topologies — you can simulate real clusters easily.
🧩 Compatible with standard Kubernetes tooling — kubectl, Helm, etc., work out of the box.
🧪 Often used in CI/CD pipelines with tools like GitHub Actions and GitLab CI.
```


🏗️ Deployment Options
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```




