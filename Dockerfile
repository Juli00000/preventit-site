# preventit.tech - statische Landingpage, ausgeliefert via nginx.
# Coolify: Build Pack "Dockerfile". Es muss KEIN Port-Mapping von Hand gesetzt werden,
# Coolify/Traefik erkennt Port 80 automatisch und stellt HTTPS (Let's Encrypt) bereit.
FROM nginx:alpine

# Alle statischen Dateien (index.html + die beiden Bilder) ins Web-Root.
COPY index.html /usr/share/nginx/html/index.html
COPY b2b_motiv.png /usr/share/nginx/html/b2b_motiv.png
COPY preventit_logo_weiss.png /usr/share/nginx/html/preventit_logo_weiss.png

EXPOSE 80
