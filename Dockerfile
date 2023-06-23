FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN python -m pip install -U pip wheel && \
    pip install -r requirements.txt

COPY . /app


# Run the service on port 8000
ENV PORT 8000
EXPOSE $PORT
CMD  [ "python", "my_first.py" ]
