# Use Go 1.25.6 Alpine as builder
FROM golang:1.25.6-alpine AS builder

# Set working directory
WORKDIR /app

# Copy go.mod and go.sum
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy all source code
COPY . .

# Build the Go app
RUN go build -o backend-app main.go

# Final lightweight image
FROM alpine:latest

WORKDIR /app

# Copy binary from builder
COPY --from=builder /app/backend-app .

# Expose port (adjust if needed)
EXPOSE 3000

# Run the binary
CMD ["./backend-app"]

