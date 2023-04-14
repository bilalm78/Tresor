Dockerfile

FROM pandoc/core:latest

WORKDIR ~/tresor_shell/Tresor/indices/

COPY . ~/tresor_shell/Tresor/indices/

RUN apt-get update && apt-get install -y pandoc

CMD ["sh", "-c", "pandoc -s -o indices.pdf *.md"]






FROM debian

WORKDIR /users/etudiant/m/mb905518/tresor_shell/Tresor

COPY . /users/etudiant/m/mb905518/tresor_shell/Tresor

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y pandoc

CMD ["sh", "-c", "pandoc -f markdown -t pdf indices.md -o indices.pdf"]




FROM debian

WORKDIR /users/etudiant/m/mb905518/tresor_shell/Tresor/indices/

COPY . /users/etudiant/m/mb905518/tresor_shell/Tresor/indices/

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y pandoc texlive-latex-base 

CMD ["sh", "-c", "pandoc -f markdown -t pdf * -o indices.pdf"]
