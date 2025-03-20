FROM ubuntu:22.04

# Install dependencies
RUN apt update && apt install -y curl

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose port 11434 for external access
EXPOSE 11434

# Run Ollama server and bind to 0.0.0.0
CMD ["ollama", "serve", "--host", "0.0.0.0"]
