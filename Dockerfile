FROM python:3.7-alpine

WORKDIR /code

<<<<<<< HEAD
ENV FLASK_APP=atm.py
=======
ENV FLASK_APP=login.py
>>>>>>> d2489a0029274b1c0239e87fd59993991a99118b

ENV FLASK_RUN_HOST=0.0.0.0

RUN apk add --no-cache gcc musl-dev linux-headers

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000

COPY . .

CMD ["flask", "run"]
