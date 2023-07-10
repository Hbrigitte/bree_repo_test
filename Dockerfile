# image de base à utiliser
FROM python:3.9-slim  

#répertoire de travail
WORKDIR /app

#prendre les fichiers et dépendances qu'il faut
COPY requirements.txt .
RUN python -m pip install -U pip wheel && \
    pip install -r requirements.txt

#copier tout ce qui est le repertoire courant dans le répertoire de travail
COPY . /app


# établir le port à exposer
ENV PORT 8000
EXPOSE $PORT

# commande exécuter par le conteneur au démarrage
CMD  [ "python", "my_first.py" ]
