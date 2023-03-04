#! /bin/sh

echo "startup docker file"
docker image build -t sample:latest .
docker run -it sample
