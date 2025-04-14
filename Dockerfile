FROM python:3.9

WORKDIR /app

# Git va boshqa kerakli paketlar
RUN apt-get update && apt-get install -y git && apt-get clean

# Kinobot'ni yuklab olamiz
RUN git clone https://github.com/wlatv/Kinobot.git

# Ishchi katalogni o‘zgartiramiz — bot.py joylashgan joyga
WORKDIR /app/Kinobot

# Kutubxonalarni o‘rnatamiz
RUN pip install --no-cache-dir -r requirements.txt

# Botni ishga tushiramiz
CMD ["python", "bot.py"]
