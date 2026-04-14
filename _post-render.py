"""
Post-render wrapper: runs _post-render.R via Rscript if R is available.
On Netlify (and any environment without R), skips gracefully.
"""
import shutil
import subprocess
import sys
import os

if shutil.which("Rscript") is None:
    print("downlit: Rscript not found, skipping link enhancement")
    sys.exit(0)

script = os.path.join(os.path.dirname(os.path.abspath(__file__)), "_post-render.R")
result = subprocess.run(["Rscript", script])
sys.exit(result.returncode)
