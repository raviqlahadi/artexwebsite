#!/bin/bash

echo "📦 Populating Nunjucks templates..."

# Base Layout
cat > _includes/layout.njk <<'EOL'
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>{{ site.title }} - {{ site.tagline }}</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://unpkg.com/flowbite@2.2.1/dist/flowbite.min.css" rel="stylesheet" />
  <script src="https://unpkg.com/lucide@latest"></script>
  <style> html { scroll-behavior: smooth; } </style>
</head>
<body class="bg-white text-gray-900">
  {% include "navbar.njk" %}
  {{ content | safe }}
  {% include "footer.njk" %}
  <a href="{{ site.whatsapp }}" target="_blank" aria-label="Chat via WhatsApp"
    class="fixed bottom-6 right-6 z-50 bg-green-500 hover:bg-green-600 text-white p-4 rounded-full shadow-lg">
    {{ site.whatsapp_icon | safe }}
  </a>
  <script src="https://unpkg.com/flowbite@2.2.1/dist/flowbite.min.js"></script>
  <script> lucide.createIcons(); </script>
</body>
</html>
EOL

# Navbar
cat > _includes/navbar.njk <<'EOL'
<nav class="bg-white border-b border-gray-200 sticky top-0 z-50">
  <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
    <div class="flex items-center">
      {{ site.logo | safe }}
      <span class="ml-2 text-lg font-bold text-gray-800">{{ site.title }}</span>
    </div>
    <button data-collapse-toggle="navbar-menu" type="button"
      class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none"
      aria-controls="navbar-menu" aria-expanded="false">
      <span class="sr-only">Toggle menu</span>
      <i data-lucide="menu" class="w-6 h-6"></i>
    </button>
    <div class="hidden w-full md:flex md:w-auto md:items-center md:space-x-6 text-sm font-medium text-gray-700" id="navbar-menu">
      <ul class="flex flex-col mt-4 md:flex-row md:mt-0 space-y-2 md:space-y-0 md:space-x-6">
        {% for link in site.nav %}
          <li><a href="#{{ link.id }}" class="block hover:text-blue-600">{{ link.label }}</a></li>
        {% endfor %}
      </ul>
    </div>
    <div class="hidden md:flex md:order-2">
      <a href="{{ site.whatsapp }}" target="_blank"
        class="flex items-center gap-2 text-white bg-green-500 hover:bg-green-600 font-medium rounded-lg text-sm px-4 py-2">
        <i data-lucide="message-circle" class="w-4 h-4"></i> WhatsApp Kami
      </a>
    </div>
  </div>
</nav>
EOL

# Footer
cat > _includes/footer.njk <<'EOL'
<footer class="bg-gray-800 text-white py-8">
  <div class="max-w-screen-xl mx-auto px-4 text-center">
    <p class="text-sm">{{ footer.text }}</p>
    <p class="text-xs mt-1">{{ footer.contact }}</p>
  </div>
</footer>
EOL

# Hero
cat > _includes/hero.njk <<'EOL'
<section class="bg-gray-50" id="hero">
  <div class="max-w-screen-xl px-4 py-16 mx-auto lg:grid lg:grid-cols-2 gap-8 items-center">
    <div>
      <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-tight text-gray-900 md:text-5xl">
        {{ hero.title }}
      </h1>
      <p class="mb-6 text-lg text-gray-700">{{ hero.description }}</p>
      <a href="{{ site.whatsapp }}" target="_blank"
        class="inline-block px-6 py-3 text-sm font-medium text-white bg-green-500 rounded-lg hover:bg-green-600">
        Hubungi via WhatsApp
      </a>
    </div>
    <div class="mt-8 lg:mt-0">
      <img src="{{ hero.image }}" alt="Hero Image" />
    </div>
  </div>
</section>
EOL

# About
cat > _includes/about.njk <<'EOL'
<section id="about" class="bg-white py-20">
  <div class="max-w-screen-xl mx-auto px-4 text-center">
    <h2 class="text-3xl font-bold text-gray-800 mb-4">{{ about.title }}</h2>
    <p class="text-gray-600 max-w-2xl mx-auto">{{ about.content }}</p>
  </div>
</section>
EOL

# Services
cat > _includes/services.njk <<'EOL'
<section id="services" class="bg-gray-50 py-20">
  <div class="max-w-screen-xl mx-auto px-4 text-center">
    <h2 class="text-3xl font-bold text-gray-800 mb-8">{{ services.title }}</h2>
    <p class="text-gray-600 mb-6 max-w-2xl mx-auto">{{ services.description }}</p>
    <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
      {% for item in services.list %}
      <div class="bg-white rounded-lg shadow p-6 text-left">
        <h3 class="text-xl font-semibold mb-2">{{ item.name }}</h3>
        <p class="text-gray-600">{{ item.description }}</p>
      </div>
      {% endfor %}
    </div>
  </div>
</section>
EOL

# Projects
cat > _includes/projects.njk <<'EOL'
<section id="projects" class="bg-white py-20">
  <div class="max-w-screen-xl mx-auto px-4 text-center">
    <h2 class="text-3xl font-bold text-gray-800 mb-8">{{ projects.title }}</h2>
    <div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
      {% for project in projects.list %}
      <div class="bg-gray-100 rounded-lg h-48 flex items-center justify-center text-gray-400">
        {{ project.name }}
      </div>
      {% endfor %}
    </div>
  </div>
</section>
EOL

# CTA
cat > _includes/cta.njk <<'EOL'
<section id="contact" class="bg-blue-600 py-20 text-white text-center">
  <div class="max-w-screen-md mx-auto px-4">
    <h2 class="text-3xl font-bold mb-4">{{ cta.title }}</h2>
    <p class="mb-6">{{ cta.description }}</p>
    <a href="{{ site.whatsapp }}" target="_blank"
      class="inline-block bg-green-500 hover:bg-green-600 text-white px-6 py-3 rounded-lg">
      WhatsApp Kami
    </a>
  </div>
</section>
EOL

# Homepage
cat > index.njk <<'EOL'
{% extends "layout.njk" %}
{% block content %}
  {% include "hero.njk" %}
  {% include "about.njk" %}
  {% include "services.njk" %}
  {% include "projects.njk" %}
  {% include "cta.njk" %}
{% endblock %}
EOL

echo "✅ Nunjucks templates populated!"