# Use Python 3.12 base image
FROM python:3.12

# Set working directory
WORKDIR /app

# Install FastAPI and Uvicorn
RUN pip install fastapi uvicorn

# Copy your FastAPI app file into container
COPY fastapi_endpoint.py .
COPY helper.py .

# Expose port 8000
EXPOSE 8000

# Run FastAPI app
CMD ["uvicorn", "fastapi_endpoint:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
