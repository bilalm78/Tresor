FROM debian

WORKDIR /users/etudiant/m/mb905518/tresor_shell/Tresor/indices/

COPY . /users/etudiant/m/mb905518/tresor_shell/Tresor/indices/

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y pandoc texlive-latex-base 

CMD ["sh", "-c", "pandoc -f markdown -t pdf *.md -o indices.pdf"]
