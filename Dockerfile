FROM ironmansoftware/universal:1.5.12-windowsserver-1909

# Switch to PowerShell
SHELL ["powershell", "-C"]

# Install Chocolatey
RUN Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Dependencies
RUN choco install -y git