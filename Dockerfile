FROM python:3.9.18-slim-bullseye
WORKDIR /app
COPY ./ /app/
RUN pip install --no-cache-dir -r requirements.txt
ENV TELEGRAM_BOT_API_KEY="7546588107:AAGF9jOvZxVdoSPIEe9F-6bDVLMyePfWH5I"
ENV GEMINI_API_KEYS="AIzaSyCLZiA5NO6H6lzr5Tx6IYHmqdrBPi8GorQ"
CMD ["sh", "-c", "python main.py ${TELEGRAM_BOT_API_KEY} ${GEMINI_API_KEYS}"]
