# Cláudia Mamede - Personal Website

Personal academic website built with [Jekyll](https://jekyllrb.com/) using the [al-folio](https://github.com/alshedivat/al-folio) theme.

## Live Site

https://claudiarmamede.github.io

## Local Development

### Prerequisites
- Ruby
- Bundler
- Jekyll

### Running Locally

```bash
bundle exec jekyll serve
```

Visit `http://localhost:4000` to view the site.

## Content Management

### Publications

Edit publications in `_bibliography/papers.bib` using BibTeX format.

Supported fields:
- `pdf`: Link to PDF file (place PDFs in `assets/pdf/`)
- `website`: Link to project website
- `code`: Link to code repository
- `abstract`: Paper abstract
- `selected`: Set to `true` to feature on homepage

### Projects

Add project pages in `_projects/` directory. Each project is a markdown file with front matter.

### Blog Posts

Add blog posts in `_posts/` directory following the naming convention: `YYYY-MM-DD-title.md`

## ASE-25 Project Integration

The ASE-25 "Interpretable Vulnerability Reports" project is hosted as a separate repository and integrated into this website at `/publications/ase-25/`.

### Project Repository

https://github.com/claudiarmamede/ase25-interpretable-reports-web

### Updating the ASE-25 Project

When you make changes to the ASE-25 project and want to deploy them to the website:

1. **Run the update script**:
   ```bash
   ./update-ase25.sh
   ```

   This script will:
   - Pull the latest changes from the ASE-25 repository
   - Install dependencies
   - Build the project
   - Copy the built files to `publications/ase-25/`

2. **Review and deploy**:
   ```bash
   git status
   git add publications/ase-25/
   git commit -m "Update ASE-25 project"
   git push
   ```

### Modifying the Update Script

If you move the ASE-25 repository or need to change paths, edit `update-ase25.sh`:

- **Line 10**: Update `PROJECT_DIR` if the ASE-25 repo moves
- **Line 11**: Update `WEBSITE_DIR` if this repo moves
- **Line 12**: Update `DEPLOY_DIR` to change deployment location

Example:
```bash
PROJECT_DIR="/path/to/ase25-interpretable-reports-web"
WEBSITE_DIR="/path/to/claudiarmamede.github.io"
DEPLOY_DIR="publications/ase-25"
```

## Deployment

The site is automatically deployed to GitHub Pages when you push to the `master` branch.

## Theme Documentation

For detailed theme documentation and customization options, see:
- [al-folio repository](https://github.com/alshedivat/al-folio)
- [Customization guide](https://github.com/alshedivat/al-folio/blob/master/CUSTOMIZE.md)
