FROM golang:1.11-alpine

# Set maintainer label: maintainer=[YOUR-EMAIL]
LABEL maintainer="S2110455025@fhooe.at"

# Set working directory: `/src`
WORKDIR /src


# Copy local file `main.go` to the working directory
COPY ./main.go ./


# List items in the working directory (ls)
RUN ls

# Build the GO app as myapp binary and move it to /usr/
RUN CGO_ENABLED=0 go build -o /usr/timeservice

#Expose port 8888
EXPOSE 8888

# Run the service myapp when a container of this image is launched
CMD [ "/usr/timeservice" ]

# docker image build -f Dockerfile -t arthofer93/my-firstimage:0.0.1 ./
# docker image push arthofer93/my-firstimage:0.0.1