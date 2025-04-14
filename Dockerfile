# Python bazasida ishlaydi
FROM python:3.9

# Ishchi katalog yaratamiz
WORKDIR /app

# GitHub'dan Kinobot kodini yuklab olamiz
RUN apt-get update && apt-get install -y git && apt-get clean
RUN git clone https://github.com/wlatv/Kinobot.git /app

# Talab qilingan kutubxonalarni o‘rnatamiz
RUN pip install --no-cache-dir telethon

WORKDIR /app/kinobot
# Botni ishga tushiramiz
CMD ["python", "bot.py"]
