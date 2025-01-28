# Use the official lightweight Python image
FROM python:3.12-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    FLASK_APP=app.py \
    FLASK_RUN_HOST=0.0.0.0

# Create working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose the port
EXPOSE 5000

# Command to run the app
CMD ["flask", "run"]
