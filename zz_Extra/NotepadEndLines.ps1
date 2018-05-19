#####################################################################
# Notes:
# If you can't find both registry key values
# fPasteOriginalEOL, fWindowsOnlyEOL
# under "HKEY_CURRENT_USER\Software\Microsoft\Notepad", 
# please use the latest Windows 10 Insider Preview.
#
# References Link：
# https://blogs.msdn.microsoft.com/commandline/2018/05/08/extended-eol-in-notepad/
# https://qiita.com/mihochannel/items/6e2afbf75407d0cb2b3c
#####################################################################

# Notepad query
reg query "HKEY_CURRENT_USER\Software\Microsoft\Notepad"
reg query "HKEY_CURRENT_USER\Software\Microsoft\Notepad" /v fPasteOriginalEOL
reg query "HKEY_CURRENT_USER\Software\Microsoft\Notepad" /v fWindowsOnlyEOL

# Notepad add
reg add "HKEY_CURRENT_USER\Software\Microsoft\Notepad" /v fWindowsOnlyEOL /t REG_DWORD /d 0
reg add "HKEY_CURRENT_USER\Software\Microsoft\Notepad" /v fPasteOriginalEOL /t REG_DWORD /d 0

