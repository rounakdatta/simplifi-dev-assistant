FROM python:3.6
LABEL maintainer="rounakdatta12@gmail.com"
COPY . /dev-assistant
WORKDIR /dev-assistant
RUN pip3.6 install -r requirements.txt
EXPOSE 8080
CMD ["sh","-c","python3 -m spacy download en_core_web_sm && python3 -m spacy link en_core_web_sm en && cd dev-assistant/ && python3 app.py"]
