# Get Python
FROM python:3.11-slim

# Create a working directory
WORKDIR /app

# Copy requirements.txt
COPY app/requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application file
COPY app/ ./app 
COPY app/main.py .

# Expose the port and run the application
EXPOSE 5500
CMD ["python", "main.py"]