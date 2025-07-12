Write-Host "Starting GPCR Amino Acid Residue Analysis GUI..." -ForegroundColor Green
Write-Host ""
Write-Host "This will open the GUI in your default web browser." -ForegroundColor Yellow
Write-Host "If it doesn't open automatically, go to: http://localhost:8501" -ForegroundColor Yellow
Write-Host ""
Write-Host "Press Ctrl+C to stop the application when you're done." -ForegroundColor Cyan
Write-Host ""
Read-Host "Press Enter to start the GUI"

try {
    streamlit run gpcr_app.py
}
catch {
    Write-Host "Error running the GUI. Make sure you have installed the requirements:" -ForegroundColor Red
    Write-Host "pip install -r requirements.txt" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
} 