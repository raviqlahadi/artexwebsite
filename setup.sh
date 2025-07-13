#!/bin/bash

echo "📦 Setting up Artex Industri project structure..."

# Create folders
mkdir -p _data _includes

# Create JSON data files with starter content
cat > _data/site.json <<EOL
{
  "title": "Artex Industri",
  "tagline": "Pusat Sablon & Garment Kendari",
  "logo": "<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40' viewBox='0 0 100 100' fill='currentColor'><rect width='100' height='100' rx='20'/><text x='50%' y='55%' text-anchor='middle' fill='white' font-size='40' font-family='Arial' dy='.3em'>A</text></svg>",
  "whatsapp": "https://wa.me/6281234567890?text=Halo%20Artex,%20saya%20tertarik%20dengan%20layanan%20Anda",
  "whatsapp_icon": "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 32 32' class='w-6 h-6 fill-white'><path d='M16.002 3C9.376 3 ... z'/></svg>",
  "nav": [
    {"id": "about", "label": "Tentang Kami"},
    {"id": "services", "label": "Layanan"},
    {"id": "projects", "label": "Proyek"},
    {"id": "contact", "label": "Kontak"}
  ]
}
EOL

cat > _data/hero.json <<EOL
{
  "title": "Solusi Pakaian Sablon & Garment di Kendari",
  "description": "Kami menyediakan layanan pembuatan seragam, kaos olahraga, dan berbagai kebutuhan pakaian dengan kualitas terbaik.",
  "image": "https://source.unsplash.com/800x600/?tshirt,factory"
}
EOL

cat > _data/about.json <<EOL
{
  "title": "Tentang Artex Industri",
  "content": "Artex Industri adalah pusat sablon dan garment terpercaya di Kendari, melayani berbagai kebutuhan pakaian untuk individu, komunitas, hingga perusahaan."
}
EOL

cat > _data/services.json <<EOL
{
  "title": "Layanan Kami",
  "description": "Berikut layanan utama yang kami tawarkan untuk Anda:",
  "list": [
    {"name": "Sablon Kaos", "description": "Cetak kaos dengan desain custom berkualitas tinggi."},
    {"name": "Pembuatan Seragam", "description": "Seragam kerja, sekolah, atau komunitas sesuai permintaan."},
    {"name": "Kaos Olahraga", "description": "Kaos olahraga untuk tim dengan bahan nyaman dan desain menarik."}
  ]
}
EOL

cat > _data/projects.json <<EOL
{
  "title": "Proyek yang Telah Dikerjakan",
  "list": [
    {"name": "Seragam PT. Kendari Makmur"},
    {"name": "Kaos Event Marathon 2024"},
    {"name": "Jersey Tim Futsal Kendari"}
  ]
}
EOL

cat > _data/cta.json <<EOL
{
  "title": "Siap Memesan?",
  "description": "Hubungi kami sekarang untuk konsultasi dan estimasi harga cepat!"
}
EOL

cat > _data/footer.json <<EOL
{
  "text": "© 2025 Artex Industri. All rights reserved.",
  "contact": "Email: info@artexindustri.com | Telp: +62 812-3456-7890"
}
EOL

# Create Nunjucks files (empty for now)
touch _includes/layout.njk
touch _includes/navbar.njk
touch _includes/footer.njk
touch _includes/hero.njk
touch _includes/about.njk
touch _includes/services.njk
touch _includes/projects.njk
touch _includes/cta.njk

# Create homepage
touch index.njk

echo "✅ Project structure and content created!"