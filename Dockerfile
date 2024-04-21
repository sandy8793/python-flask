# Use a base image with Python
FROM python:3.6

#maintained by
Maintainer "bhogilesaudagar@gmail.com"

# Set the working directory in the container
WORKDIR /app

# Copy the Python application files into the container
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the Python application
CMD ["python", "app.py"]
