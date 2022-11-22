FROM ironmansoftware/universal:2.7.3-windowsserver-1909

# Switch to PowerShell
SHELL ["powershell", "-C"]

# Install Chocolatey
RUN Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Dependencies
RUN choco install -yr --no-progress git