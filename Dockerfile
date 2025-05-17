FROM ruby:3.2-slim

# Set working directory
WORKDIR /usr/src/app

# Copy the project files
COPY . .

# Default command runs the demo script
CMD ["ruby", "demo.rb"]
