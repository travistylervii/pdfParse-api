FROM python:3.8.10-slim

COPY . ./app

WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches
CMD ["python", "app.py"]
