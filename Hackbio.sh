#!/bin/bash
# HackBio Project Script
# Author: Oluwadamilare
# Description: Automates bioinformatics setup and basic sequence analysis

# Exit immediately on errors, unset vars, or failed pipes
set -euo pipefail

# ----------------------------
# Define variables
# ----------------------------
PROJECT_DIR="$(pwd)"
PERSONAL_DIR="$PROJECT_DIR/Oluwadamilare"
BIO_DIR="$PROJECT_DIR/biocomputing"
FNA_URL="https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna"
GBK_URL="https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk"
FNA_FILE="wildtype.fna"
GBK_FILE="wildtype.gbk"
MUTANT_FILE="Mutant.txt"

# ----------------------------
# Task 1: File Management & Sequence Search
# ----------------------------

echo ">>> Task 1: Managing files and performing sequence analysis"

# Create directories if they don’t already exist
mkdir -p "$PERSONAL_DIR" "$BIO_DIR"

# Download sequence files
echo "Downloading data files..."
wget -q -O "$BIO_DIR/$FNA_FILE" "$FNA_URL" || { echo "Failed to download $FNA_FILE"; exit 1; }
wget -q -O "$BIO_DIR/$GBK_FILE" "$GBK_URL" || { echo "Failed to download $GBK_FILE"; exit 1; }

# Move .fna file into personal folder
mv "$BIO_DIR/$FNA_FILE" "$PERSONAL_DIR/"

# Search for motif "tatatata" and save results
cd "$PERSONAL_DIR"
grep "tatatata" "$FNA_FILE" > "$MUTANT_FILE" || echo "No motif found in $FNA_FILE"
echo "Motif search results saved to $MUTANT_FILE"

# Extract data from .gbk file
cd "$BIO_DIR"
echo "Number of lines (excluding header): $(awk 'NR>1' "$GBK_FILE" | wc -l)"
echo "Genome length: $(grep '^LOCUS' "$GBK_FILE" | awk '{print $3}')"
echo "Organism source: $(grep '^SOURCE' "$GBK_FILE" | head -n 1 | awk '{$1=""; print $0}')"

# Save gene list
GENE_LIST=$(grep '/gene="' "$GBK_FILE" | cut -d '"' -f2 | wc -l)
echo "Extracted $GENE_LIST genes from $GBK_FILE"

# ----------------------------
# Task 2: Environment Setup (Conda)
# ----------------------------

echo ">>> Task 2: Setting up Conda environment"

# Check if conda exists
if ! command -v conda &> /dev/null; then
    echo "Error: Conda is not installed. Please install Miniconda/Anaconda first."
    exit 1
fi

# Create environment if not already present
if ! conda env list | grep -q "Biocomputing_env"; then
    conda create -y -n Biocomputing_env bwa
else
    echo "Conda environment Biocomputing_env already exists."
fi

# Activate environment
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate Biocomputing_env

# Install additional tools (quietly, skip if already installed)
echo "Installing bioinformatics tools..."
conda install -y blast samtools bedtools spades bcftools multiqc

# Verify tool versions
echo "Installed tool versions:"
bwa 2>&1 | head -n 1
blastn -version | head -n 1
samtools --version | head -n 1
bedtools --version
spades.py --version
bcftools --version | head -n 1
multiqc --version

echo ">>> Script completed successfully!"
# linkedln video link
https://www.linkedin.com/posts/oluwadamilare-babatunde-397b68234_hackbio-bioinformatics-activity-7368003429052350465-oVjP?utm_source=share&utm_medium=member_desktop&rcm=ACoAADqMYiMBnH6dSqjpizU2ox8Wm2dD39LGE6Q