#AWS_CI
AWS CI/CD Pipeline with Docker and AWS CodeDeploy

Project Overview

This project demonstrates an automated Continuous Integration and Continuous Deployment (CI/CD) pipeline using AWS services, Docker, GitHub, and Amazon EC2.

The objective is to automate the application deployment process whenever new code is pushed to the GitHub repository.

The application is containerized using Docker and deployed to an Ubuntu-based Amazon EC2 instance using AWS CodeDeploy.

Architecture

Technologies Used

Technology| Purpose
GitHub| Source code management
AWS CodePipeline| CI/CD orchestration
AWS CodeBuild| Build automation
Docker| Application containerization
Docker Hub| Container image registry (if used)
AWS CodeDeploy| Automated deployment
Amazon EC2| Application hosting
AWS Systems Manager Parameter Store| Secure credential storage (if configured)
Ubuntu| Server operating system
Python| Application development

CI/CD Workflow

1. Developer pushes application code to GitHub.
2. AWS CodePipeline detects the source code changes.
3. AWS CodeBuild executes the buildspec.yml file.
4. Docker image is built and prepared for deployment.
5. AWS CodeDeploy receives the deployment revision.
6. CodeDeploy executes lifecycle scripts.
7. The application container starts on the EC2 instance.
8. The deployment is validated.

Project Structure

AWS-CICD/
├── Dockerfile
├── README.md
├── app.py
├── appspec.yml
├── buildspec.yml
├── requirements.txt
├── scripts/
│   ├── start_container.sh
│   ├── stop_container.sh
│   └── validate.sh
├── screenshots/
└── docs/

AWS Services Configuration

1. Amazon EC2

- Ubuntu operating system.
- Docker installation.
- AWS CodeDeploy agent installation.
- IAM instance profile configuration.

2. AWS CodePipeline

- GitHub source integration.
- CodeBuild build stage.
- CodeDeploy deployment stage.

3. AWS CodeBuild

- Build environment configuration.
- Docker image build process.
- Buildspec configuration.

4. AWS CodeDeploy

- Application and deployment group configuration.
- EC2 instance selection.
- AppSpec lifecycle hooks.
- Automated container deployment.

5. IAM

- CodePipeline service role.
- CodeBuild service role.
- CodeDeploy service role.
- EC2 instance profile.

Deployment Steps

1. Clone this repository.
2. Configure the required AWS IAM roles and permissions.
3. Launch an Ubuntu EC2 instance.
4. Install Docker and the CodeDeploy agent.
5. Configure the GitHub source connection.
6. Configure CodeBuild and CodeDeploy.
7. Create the CodePipeline.
8. Push changes to GitHub.
9. Monitor the pipeline execution.
10. Verify application availability on EC2.

Challenges and Troubleshooting

During implementation, the following areas required troubleshooting:

- IAM role permissions and service access.
- Docker container startup and shutdown.
- CodeDeploy lifecycle hook configuration.
- AppSpec file configuration.
- S3 deployment artifact access.
- AWS KMS encryption permissions.
- CodePipeline deployment failures.

Project Outcome

Successfully implemented an automated deployment workflow connecting GitHub, AWS CodePipeline, CodeBuild, CodeDeploy, Docker, and Amazon EC2.

The project demonstrates practical experience with cloud infrastructure, containerization, CI/CD automation, IAM, and deployment troubleshooting.

Author

Your Name
Somenath Acharjee
Aspiring DevOps Engineer

GitHub: Codeintox

LinkedIn: 
