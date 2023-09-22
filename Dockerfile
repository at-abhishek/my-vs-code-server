# Use the official code-server image as the base image
FROM codercom/code-server:latest

# Set environment variables if needed
# ENV VARIABLE_NAME=value

# Expose the port on which code-server runs (default is 8080)
EXPOSE 8080

# (Optional) Add your own custom configurations or extensions
# COPY settings.json /home/coder/.local/share/code-server/User/settings.json
# RUN code-server --install-extension your-extension-id

# (Optional) Set the default password for code-server
# RUN echo "my-vscode" > /home/coder/code-server-password.txt

# (Optional) Install additional packages or software if needed
# RUN apt-get update && apt-get install -y your-package-name

# Start code-server when the container is run
CMD ["code-server", "--auth", "none"]
