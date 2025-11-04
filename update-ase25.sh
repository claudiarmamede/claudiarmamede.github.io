#!/bin/bash

# Script to update ASE-25 project from GitHub and deploy to publications folder
# Usage: ./update-ase25.sh

set -e  # Exit on error

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

PROJECT_DIR="/Users/cmamede/Desktop/Papers/ASE25/ase25-interpretable-reports-web"
WEBSITE_DIR="/Users/cmamede/Desktop/claudia.github.io/claudiarmamede.github.io"
DEPLOY_DIR="publications/ase-25"

echo -e "${BLUE}Updating ASE-25 Interpretable Reports...${NC}"

# Navigate to project directory
cd "$PROJECT_DIR"

# Pull latest changes
echo -e "${BLUE}Pulling latest changes from GitHub...${NC}"
git pull

# Install dependencies if needed
echo -e "${BLUE}Installing dependencies...${NC}"
npm install

# Build the project
echo -e "${BLUE}Building project...${NC}"
npm run build

# Navigate back to website directory
cd "$WEBSITE_DIR"

# Copy built files to publications
echo -e "${BLUE}Copying built files to $DEPLOY_DIR...${NC}"
rm -rf "$DEPLOY_DIR"/*
cp -r "$PROJECT_DIR/dist/"* "$DEPLOY_DIR/"

echo -e "${GREEN}✓ ASE-25 project updated successfully!${NC}"
echo -e "${BLUE}Files are now in: $DEPLOY_DIR${NC}"
echo ""
echo -e "${BLUE}Next steps:${NC}"
echo "  git add publications/ase-25/"
echo "  git commit -m \"Update ASE-25 project\""
echo "  git push"
