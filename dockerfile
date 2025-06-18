# Gunakan image Nginx versi ringan (alpine)
FROM nginx:alpine

# Hapus file default di Nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin semua file HTML/CSS/JS dari folder lokal ke direktori root Nginx
COPY . /usr/share/nginx/html

# Buka port 80
EXPOSE 80

# Jalankan Nginx (default command di image Nginx)
