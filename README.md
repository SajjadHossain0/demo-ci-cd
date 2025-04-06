<h1 align="center">CI/CD Pipeline practice</h1>

<h3>📌 Project Overview</h3>
<p>
This repository demonstrates a basic CI/CD pipeline using GitHub Actions for a Dockerized Spring Boot application. The pipeline builds, pushes a Docker image to Docker Hub, and prepares the app for deployment.
</p>

<h3>🛠️ Tech Stack</h3>

Java + Spring Boot

GitHub Actions

Docker

Docker Hub

<h3>⚙️ CI/CD Pipeline Workflow</h3>

<img src="https://github.com/user-attachments/assets/c842c719-1c89-4b6a-8b3b-44cce81b1c01">

1. ✅ Create a new Spring Boot application using your preferred IDE or Spring Initializr.

2. 🧑‍💻 Write your application code and push it to a GitHub repository.

3. ⚙️ Go to the "Actions" tab in your repository and set up a new workflow (or create a .yml file manually under .github/workflows).

4. 📄 Configure the workflow YAML file to:
        Build your project using Maven 
        Build a Docker image 
        Push the image to Docker Hub using DOCKER_USERNAME and DOCKER_PASSWORD from secrets

5. 🐳 Add a Dockerfile to your project root and configure finalName in pom.xml to ensure consistent .jar naming.

6. 🔐 Set up GitHub secrets for your Docker credentials:
         DOCKER_USERNAME
         DOCKER_PASSWORD

7. 🚀 Push your code to GitHub – the workflow will trigger, build the project, create the Docker image, and push it to Docker Hub.

8. 🖥️ On your server/local machine, pull the Docker image and run the container:
                  docker pull yourusername/yourimagename
                  docker run -p 8080:8080 yourusername/yourimagename


<h3>🙋‍♂️ Author / Contact Info</h3>

Developed by <a href="https://sajjadhossain.onrender.com/">Md Sajjad Hossain</a>