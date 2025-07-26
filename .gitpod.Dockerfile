FROM gitpod/workspace-full

# On passe en 'root' pour installer un outil système comme Ignite
USER root

# Installation d'Ignite CLI
RUN curl -sL https://get.ignite.com/cli! | bash

# On revient à l'utilisateur standard 'gitpod' pour le reste
USER gitpod

# Installation de Go (pour l'utilisateur gitpod)
RUN wget -q -O - https://git.io/vQhTU | bash -s -- --version 1.21.0
ENV PATH=$PATH:/home/gitpod/.go/bin
