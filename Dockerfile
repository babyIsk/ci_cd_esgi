# Recette de l'image Docker de l'application
# On part d'une boîte qui contient déjà un serveur web léger (nginx)
FROM nginx:alpine

# On copie les pages produites par "npm run build" dans le dossier que nginx sert
COPY dist/ /usr/share/nginx/html/

# nginx écoute sur le port 80 
EXPOSE 80