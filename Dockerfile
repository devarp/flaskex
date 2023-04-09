FROM python:3.6-slim

WORKDIR /Flaskex

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
ENV FLASK_APP=app
CMD ["flask", "run", "-h", "0.0.0.0", "-p", "5000"]
