  [cmdletbinding()]
param(
   [string]$Channel="LTS",
   [string]$Version="Latest",
   [string]$JSonFile,
   [string]$InstallDir="<auto>",
   [string]$Architecture="<auto>",
   [ValidateSet("dotnet", "aspnetcore", "windowsdesktop", IgnoreCase = $false)]
   [string]$Runtime,
   [Obsolete("This parameter may be removed in a future version of this script. The recommended alternative is '-Runtime dotnet'.")]
   [switch]$SharedRuntime,
   [switch]$DryRun,
   [switch]$NoPath,
   [string]$AzureFeed="https://dotnetcli.azureedge.net/dotnet",
   [string]$UncachedFeed="https://dotnetcli.blob.core.windows.net/dotnet",
   [string]$FeedCredential,
   [string]$ProxyAddress,
   [switch]$ProxyUseDefaultCredentials,
   [switch]$SkipNonVersionedFiles,
   [switch]$NoCdn
)


  Write-Host "Channel: $Channel"
