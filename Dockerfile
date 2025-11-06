FROM python:3.10
WORKDIR /app
COPY . /app/
RUN pip3 install -r requirements.txt
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        ffmpeg \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*
CMD ["python3", "bot.py"]
