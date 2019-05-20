FROM kennethreitz/pipenv as build
COPY . /app

RUN pipenv install

# Make port 80 available to the world outside this container
EXPOSE 5000

# Define environment variable
#ENV http_proxy 127.0.0.1:5000

# Run app.py when the container launches
CMD ["python3", "app.py"]