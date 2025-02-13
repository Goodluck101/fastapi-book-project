# This Dockerfile sets up the environment, installs dependencies, and specifies the command to run the FastAPI application.
# Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port FastAPI will run on
EXPOSE 8084

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8084"]
