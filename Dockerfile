FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all project files into the container
COPY . .

# Make all Python files executable
RUN chmod +x *

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the main script
CMD ["python3", "main.py"]
