![509027189-1d62fa4a-49a4-46c4-96cc-c87b4a99613b](https://github.com/user-attachments/assets/cf8e2e73-3e58-49e7-87dc-f872465f0351)




## Kubernetes | DataHub Platform
DataHub is an open source data catalog that enables end-to-end data discovery, data observability, and data governance. This extensive metadata platform allows users to collect, store, and explore metadata from various sources, such as databases, data lakes, streaming platforms, and ML feature stores. DataHub provides many features, a rich UI for searching and browsing metadata, as well as an API for integrating with other applications.


⚙️ Key Features:
```
✅ Metadata Ingestion - Connects to data sources like Snowflake, BigQuery, Redshift, Kafka, Airflow, dbt, Looker, Tableau, etc.
✅ Search & Discovery - Enables users to search for datasets, dashboards, or pipelines by name, column, owner, or tags.
✅ Data Lineage - Visualizes data flow from source → transformation → consumption (ETL, dashboards, ML models)
✅ Schema History - Tracks schema evolution and changes over time.
✅ Ownership & Documentation - Assigns owners, adds descriptions, and defines terms for better governance.
✅ Access via API & UI - Provides a modern React-based web UI and GraphQL API for programmatic access.
✅ Policy & Governance - Supports metadata policies, tags, and role-based access.
```


🏗️ Architecture Overview
```
DataHub is built on a modular architecture:
Metadata Service (GMS) – Central GraphQL-based metadata store (backed by MySQL/Elasticsearch).
Ingestion Framework – Python-based system that pulls metadata from sources.
Frontend – React UI for search, lineage visualization, and dataset exploration.
Kafka / MCEs – Uses Kafka topics for event-based metadata updates.
Graph Model – Metadata is modeled as a graph (datasets, pipelines, owners are all nodes/edges).
```


🚀 Deployment Options
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```




