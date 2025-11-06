# Create README.md with environment and data handling instructions
@"
# 🧬 Research Project Template

A clean and reusable template for structuring research projects — ideal for machine learning, data science, and scientific experiments.

---

## ⚠️ Data Policy — DO NOT PUSH ANY DATA

**Never commit or push data of any kind to this repository.**

That includes:
- Raw data (e.g. patient records, physiological signals, etc.)
- Processed or anonymized datasets
- Intermediate files, model checkpoints, or logs containing data

Use this repository **only for code, configuration files, and documentation**.

If you need to share data internally, use:
- Institutional data servers  
- Encrypted storage solutions  
- Secure file transfer systems (e.g., SFTP, Synapse, or DVC remote)  

> 💡 All data folders (like \`data/\`) are already excluded by \`.gitignore\`.

---

## ⚙️ Environment Setup

### 1. Create a new conda environment
You can create a new environment with your chosen name, for example:

\`\`\`bash
conda create -n myresearch python=3.10
conda activate myresearch
\`\`\`

### 2. Install dependencies
Install what you need progressively:

\`\`\`bash
conda install numpy pandas scikit-learn matplotlib seaborn jupyter
pip install torch torchvision tqdm
\`\`\`

### 3. Export your environment
When your environment is ready, export it to \`environment.yml\` so others can reproduce it:

\`\`\`bash
conda env export --from-history > environment.yml
\`\`\`

> ✅ The \`--from-history\` flag keeps the file clean and avoids unnecessary dependencies.

### 4. Recreate the environment
To reproduce your setup on another machine:

\`\`\`bash
conda env create -f environment.yml
conda activate myresearch
\`\`\`

### 5. Update the environment
If you install new packages later:
\`\`\`bash
conda env export --from-history > environment.yml
git add environment.yml
git commit -m "update environment"
\`\`\`

---

## 📁 Folder Structure

research-template/
│
├── data/
│   ├── raw/                # Unprocessed data (never modify)
│   ├── processed/          # Cleaned or transformed data
│   └── external/           # External datasets (public or collaborations)
│
├── notebooks/
│   ├── exploration/        # Exploratory analyses and visualizations
│   └── experiments/        # Experiment notebooks (model training, testing)
│
├── src/
│   ├── __init__.py
│   ├── data/               # Data loading and preprocessing scripts
│   │   └── make_dataset.py
│   ├── models/             # Model definitions and training routines
│   │   └── model.py
│   ├── utils/              # Helper functions (metrics, logging, etc.)
│   │   └── visualization.py
│   └── analysis/           # Postprocessing, statistical tests, etc.
│       └── evaluate.py
│
├── experiments/
│   ├── configs/            # YAML or JSON configs for experiments
│   ├── logs/               # Training or evaluation logs
│   └── results/            # Generated results (figures, metrics)
│
├── reports/
│   ├── figures/            # Figures for publication
│   └── paper/              # Manuscripts, slides, etc.
│
├── requirements.txt        # Python dependencies
├── environment.yml         # Conda environment (optional)
├── setup.py                # If the project is installable as a package
├── .gitignore              # Ignore data, logs, caches, etc.
├── LICENSE                 # License for reuse
└── README.md               # Project overview and usage
