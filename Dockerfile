FROM mcr.microsoft.com/windows/nanoserver/insider:10.0.18356.1
LABEL maintainer="Ferdi Oeztuerk foerdi@gmail.com"

ENV PATH C:\\Windows\\System32;C:\\Windows;C:\\pwsh;

# Download PowerShell Core
RUN curl.exe -kfSL -o pwsh.zip https://github.com/PowerShell/PowerShell/releases/download/v6.1.3/PowerShell-6.1.3-win-x64.zip && \
  mkdir "C:\pwsh" && \
  tar.exe -xf pwsh.zip -C "C:\pwsh"

SHELL ["pwsh.exe", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'Continue'; $verbosePreference='Continue';"]
