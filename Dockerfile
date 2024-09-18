FROM python:3.9.18-slim-bullseye
WORKDIR /app
COPY ./ /app/
RUN pip install --no-cache-dir -r requirements.txt
ENV TELEGRAM_BOT_API_KEY="7546588107:AAGMEkeWrGOg0w8KoQ56Fu_khiKNAIja5R4"
ENV GEMINI_API_KEYS="AIzaSyCLZiA5NO6H6lzr5Tx6IYHmqdrBPi8GorQ"
CMD ["sh", "-c", "python main.py ${TELEGRAM_BOT_API_KEY} ${GEMINI_API_KEYS}"]
