FROM python

WORKDIR /usr/src/app

COPY . .

RUN pip install -r requirements.txt

CMD gunicorn noob:app --bind 0.0.0.0:$PORT
