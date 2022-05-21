FROM python

EXPOSE 8000

WORKDIR /usr/src/app

COPY . .

RUN pip install -r requirements.txt

CMD gunicorn noob:app --bind 0.0.0.0:8000
