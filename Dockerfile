# Specifying the base image
FROM python:3.10-slim

# Copy requirements.txt in order to install the required dependencies
COPY requirements.txt .

# Install the required dependencies inside the container (for this specific application no dependencies are needed for now)
RUN pip install -r requirements.txt

# Copy other files with code to container
COPY src .

# Expose port 5000 for documentation purposes
EXPOSE 5000

# Run the app inside the container
ENTRYPOINT ["python", "main.py"]
