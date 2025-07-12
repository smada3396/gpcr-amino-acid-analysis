# GPCR Amino Acid Residue Analysis Explorer (369 Receptors)

This repository contains a modern, user-friendly Streamlit app for interactive exploration and visualization of ligand-binding pocket features across **369 GPCR receptor structures**. All data and results for these receptors are included—no setup or data preparation required!

## What You Get
- **3D visualization** of all 369 GPCR receptor structures and their ligand-binding pockets
- **Pocket residue composition, conservation, and analysis metrics** for each receptor
- **Downloadable annotated data** (CSV, TXT) for every receptor
- **Ready-to-use**: just install dependencies and launch the app

## Quick Start
1. **Install Python 3.9+** (recommended: 3.10 or 3.11)
2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```
3. **Run the app:**
   - On Windows: double-click `run_gui.bat` or run `run_gui.ps1` in PowerShell
   - Or, from command line:
     ```bash
     streamlit run gpcr_app.py
     ```
4. **Open your browser to** `http://localhost:8501`

## Included Data
- The `GPCR Structures/` folder contains all 369 receptor folders, each with:
  - 3D structure files (PDB)
  - Pocket residue and analysis results (CSV, JSON, TXT)
  - Conservation summaries
- The app is preconfigured to use this data—no changes needed.

## For Developers
- Main app logic: `gpcr_app.py` and `utils.py`
- Requirements: `requirements.txt`
- Launch scripts: `run_gui.bat`, `run_gui.ps1`
- **Do not** add or commit new data unless you intend to expand the project.

---

# GPCR Amino Acid Residue Analysis Explorer

A comprehensive Streamlit web application for exploring and analyzing 369 GPCR (G Protein-Coupled Receptor) structures with detailed pocket residue analysis, conservation data, and feature vectors.

## Features

- **Interactive 3D Structure Viewer**: Visualize receptor and ligand structures using py3Dmol
- **Pocket Residue Analysis**: Explore detailed pocket residue data with conservation scores
- **Conservation Analysis**: Analyze evolutionary conservation patterns across residues
- **Data Download**: Export all analysis results in CSV, TXT and JSON formats
- **Batch Processing**: Handle 369+ receptor structures efficiently

## Requirements

- Python 3.8 or higher
- Streamlit
- py3Dmol
- pandas
- numpy
- plotly
- altair

## Installation

1. **Clone or download the application files**:
   ```
   GPCR GUI/
   ├── gpcr_app.py          # Main Streamlit application
   ├── utils.py             # Data loading utilities
   ├── requirements.txt     # Python dependencies
   └── README.md           # This file
   ```

2. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

3. **Verify data path**:
   - Open `utils.py` and ensure the `DATA_DIR` path points to your GPCR Structures directory
   - Default path: `C:\Users\madas\Downloads\GPCR Amino Acid Residue Analysis\GPCR Structures`

## Usage

1. **Start the application**:
   ```bash
   streamlit run gpcr_app.py
   ```

2. **Open your browser** and navigate to `http://localhost:8501`

3. **Select a receptor and explore** from the dropdown in the sidebar


## Key Analysis Features

### Pocket Residue Analysis
- **Distance-based pocket definition** (4Å and 6Å shells)
- **Amino acid composition** (hydrophobic, polar, acidic, basic)
- **Functional group analysis** (aromatic, sulfur, hydroxyl, etc.)
- **Secondary structure annotation**

### Conservation Analysis
- **Evolutionary conservation scores** (1-7 scale)
- **Conservation levels** (variable, moderately conserved, conserved)
- **Top conserved residues** identification
- **Conservation distribution** visualization

### Feature Vectors
- **Amino acid composition** (20 standard amino acids)
- **Physical properties** (volume, charge, hydrophobicity)
- **Structural features** (exposure, contacts, distances)
- **Functional group fractions**

## Visualization Features

- **Interactive 3D molecular viewer** with receptor/ligand toggle
- **Bar charts** for composition and functional groups
- **Pie charts** for conservation distribution
- **Histograms** for score distributions
- **Sortable data tables** with filtering capabilities

## Data Export

All analysis results can be downloaded in multiple formats:
- **CSV files** for spreadsheet analysis
- **JSON files** for programmatic access
- **Individual receptor data** or complete datasets

## Customization

### Adding New Receptors
1. Place receptor data in the GPCR Structures directory
2. Ensure file naming follows the expected pattern
3. Restart the application to load new data

### Modifying Analysis Parameters
- Edit the analysis scripts in the main analysis pipeline
- Update the data loading functions in `utils.py` as needed

### Custom Visualizations
- Modify the plotting code in `gpcr_app.py`
- Add new tabs for additional analysis types


### Performance Tips

- Use the sidebar filters to narrow down receptor selection
- Download data for offline analysis when working with large datasets
- Consider running on a local server for team access

## Technical Details

### Architecture
- **Frontend**: Streamlit web interface
- **3D Visualization**: py3Dmol (WebGL-based)
- **Data Processing**: pandas for tabular data
- **Visualization**: plotly for interactive charts
- **Caching**: Streamlit's built-in caching for performance

### Data Flow
1. **Data Loading**: `utils.py` scans directory structure
2. **Caching**: Receptor metadata cached for fast access
3. **Lazy Loading**: Individual receptor data loaded on demand
4. **Visualization**: Interactive charts and 3D views generated
5. **Export**: Data formatted for download

To extend the application:
1. Fork the repository
2. Add new analysis features
3. Update documentation
4. Submit pull request

This application is designed for research and educational use. Please cite the original analysis pipeline when using this data.

For questions or issues:
Contact Dr. Sivanesan Dakshanamurthy, PhD., MBA (sivanesan.dakshanamurthy@georgetown.edu)
