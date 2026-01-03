FROM ruby:3.3.10-slim

# Install dependencies
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    libyaml-dev \
    git \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Gemfile and install gems
COPY Gemfile ./
RUN bundle install

# Copy application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Default command
CMD ["rails", "server", "-b", "0.0.0.0"]
