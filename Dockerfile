FROM itsherchoice/newdex:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT = 8000
EXPOSE 8000

CMD ["bash", "start.sh"]
