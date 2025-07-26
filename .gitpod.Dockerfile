# On part d'une image de base fournie par Gitpod qui contient déjà plein d'outils utiles
FROM gitpod/workspace-full

# === Personnalisation pour un projet Node.js ===
# Installe une version spécifique de Node.js pour garantir la cohérence
USER gitpod
RUN bash -c 'source "$HOME/.nvm/nvm.sh" && nvm install 18 && nvm use 18 && nvm alias default 18'