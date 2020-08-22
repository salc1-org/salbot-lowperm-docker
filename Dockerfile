FROM python:3.8
ADD https://github.com/salc1-org/salbot-lowperm-v2/archive/master.zip bot.zip
RUN unzip bot.zip
RUN mv salbot-lowperm-v2-master bot
WORKDIR bot
RUN pip install -r requirements.txt
CMD ["python", "bot.py"]
