# Azure Cloud-Based File Storage System

## Project Overview
A simple cloud-based file storage system similar to Dropbox or Google Drive, built using **Bash scripting** and **Azure CLI**. The system allows users to upload, download, list, and manage files through the command line, with automated deployment via GitHub Actions.

## GitHub Repository
🔗 [Maemunat-project-Group-2-](https://github.com/Muna0704/Maemunat-project-Group-2-)

---

## Features
-  Upload files to Azure Blob Storage
-  Download files from Azure Blob Storage
-  List all files in the storage container
-  Delete files from the storage container
-  Secure secret management using GitHub Secrets
-  Automated deployment with GitHub Actions
-  Activity logging for all operations

---

## Technologies Used
- **Azure Blob Storage** – Cloud storage container
- **Azure CLI** – Command-line interface for managing Azure resources
- **Bash Scripting** – Automation and file management
- **GitHub Actions** – CI/CD pipeline for automated deployment

---

## Project Structure
```
├── storage.sh               # Main bash script for file operations
├── .github/
│   └── workflows/
│       └── main.yml         # GitHub Actions workflow file
└── README.md                # Project documentation
```

---

## Setup & Usage

### Prerequisites
- Azure account with a Storage Account created
- Azure CLI installed
- GitHub account

### Configuration
The following environment variables are required:
- `AZURE_STORAGE_KEY` – Your Azure Storage Account access key (stored as a GitHub Secret)

### Running the Script

**Upload a file:**
```bash
./storage.sh upload <filename>
```

**Download a file:**
```bash
./storage.sh download <filename>
```

**List all files:**
```bash
./storage.sh list
```

**Delete a file:**
```bash
./storage.sh delete <filename>
```

---

## Azure Storage Configuration
- **Storage Account:** `jamiucloudstorage2025`
- **Container:** `mycontainer`
- **Public Access:** Enabled

---

## GitHub Actions Workflow
The workflow automatically runs on every push to the `main` branch and tests the storage script.

### Secrets Configuration
The Azure Storage Key is stored securely as a GitHub Actions secret:
1. Go to **Settings → Secrets and variables → Actions**
2. Add `AZURE_STORAGE_KEY` with your Azure storage key value

---

## Deployment Steps
1. Clone the repository
2. Add your `AZURE_STORAGE_KEY` to GitHub Secrets
3. Push to the `main` branch
4. GitHub Actions will automatically trigger the workflow

---

## Group
**Group 2** – Maemunat Project  
Cloud Computing Project – 2026