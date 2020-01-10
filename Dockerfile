FROM node:12.13.1

RUN apt-get update && apt-get install -y -y zip && curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && unzip awscli-bundle.zip && ./awscli-bundle/install -b ~/bin/aws && export PATH=~/bin:$PATH

CMD ["node"]
