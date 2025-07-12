@echo off
echo Starting GPCR Amino Acid Residue Analysis GUI...
echo.
echo This will open the GUI in your default web browser.
echo If it doesn't open automatically, go to: http://localhost:8501
echo.
echo Press Ctrl+C to stop the application when you're done.
echo.
pause
streamlit run gpcr_app.py
pause 