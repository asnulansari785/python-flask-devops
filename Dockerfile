FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN ls -l /app
RUN wc -c app.py requirements.txt
RUN ls -l templates

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]