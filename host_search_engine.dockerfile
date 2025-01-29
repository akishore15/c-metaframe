# Dockerfile

# Use an appropriate base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the relevant data and application files into the container
COPY . .

# Install any dependencies required
RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common

# Add any additional setup steps needed for your search engine
RUN make && make install 

# Expose the port your application runs on
EXPOSE 8080

# Run the application
CMD ["./cheetahsearx"]
