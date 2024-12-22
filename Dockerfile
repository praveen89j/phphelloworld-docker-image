# Use the official PHP image from the Docker Hub
FROM php:8.1-cli

# Install vim
RUN apt update && apt install -y vim

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the PHP script into the container
COPY index.php /var/www/html/

# Start PHP's built-in web server when the container runs
CMD ["php", "-S", "0.0.0.0:8000"]
