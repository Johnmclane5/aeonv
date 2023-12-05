FROM itsherchoice/aeonv2:latest
WORKDIR /usr/src/app
COPY . .
CMD ["bash", "start.sh"]
