FROM python:3.8-slim

COPY requirements.txt requirements.txt
COPY . /code
WORKDIR /code
RUN pip install -r requirements.txt
RUN python -m spacy download en

ENV DISCORD_TOKEN=token
ENV OPENAI_API_KEY=token

CMD [ "python", "openai_discord.py"]