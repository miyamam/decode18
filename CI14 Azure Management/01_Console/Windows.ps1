#####################################################################
# Prepare for using Maintenance console feature on Windows VM
#  
# If you use the latest Marketplace Image, pls confirm registry key
#####################################################################
#
# Windows VM Console demo
#

# Preparation
bcdedit /ems {current} on
bcdedit /emssettings EMSPORT:1 EMSBAUDRATE:115200

reg query "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections

