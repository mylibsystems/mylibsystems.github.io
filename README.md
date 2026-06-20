# MyLib Systems Website

![Website](https://img.shields.io/website?url=https%3A%2F%2Fmylibsystems.com&label=Live%20Site&style=for-the-badge)
![GitHub Pages](https://img.shields.io/badge/Hosted%20on-GitHub%20Pages-222222?logo=github&style=for-the-badge)
![Repo Size](https://img.shields.io/github/repo-size/mylibsystems/mylibsystems.github.io?style=for-the-badge)
![Last Commit](https://img.shields.io/github/last-commit/mylibsystems/mylibsystems.github.io?style=for-the-badge)

Official landing page repository for MyLib Systems.

This project is a clean, static website hosted with GitHub Pages and mapped to the custom domain:

- https://mylibsystems.com

## Project Overview

This repository powers the organization website for MyLib Systems and currently includes:

- Under-construction landing page
- Custom domain setup via CNAME
- GitHub Pages deployment from the main branch

## Tech Stack

- HTML5
- CSS3
- GitHub Pages

## Repository Structure

- index.html: Main landing page
- CNAME: Custom domain configuration for GitHub Pages
- README.md: Project documentation

## Local Preview

Open index.html in any browser, or run a local static server:

- Python 3: python3 -m http.server 8080
- Then visit: http://localhost:8080

## Deployment

Deployment is automatic through GitHub Pages from:

- Branch: main
- Path: /

Any commit pushed to main updates the published site.

## Domain and DNS

Custom domain configured:

- mylibsystems.com

Required DNS records at the registrar:

- A: 185.199.108.153
- A: 185.199.109.153
- A: 185.199.110.153
- A: 185.199.111.153
- CNAME: www -> mylibsystems.github.io

## Project Goals

- Maintain a fast, minimal company landing page
- Keep hosting fully serverless and cost-efficient
- Expand into a richer corporate web presence over time

## License

All rights reserved by MyLib Systems unless explicitly stated otherwise.
