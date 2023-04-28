@echo off
setlocal enabledelayedexpansion

set target_folder=C:\Users\Lenovo\AppData

for /r "%target_folder%" %%f in (*) do (
  set file_name=%%~nxf
  if "!file_name!"=="!file_name:cache=!" (
    echo "Found cache file: %%f"
    takeown /f "%%f" && icacls "%%f" /grant administrators:F
    if exist "%%f" ( 
      del "%%f"
      echo "Deleted cache file: %%f"
    ) else (
      rd /s /q "%%f"
      echo "Deleted cache folder: %%f"
    )
  )
)

for /r "%target_folder%" %%f in (*) do (
  set file_name=%%~nxf
  if "!file_name!"=="!file_name:temp=!" (
    echo "Found cache file: %%f"
    takeown /f "%%f" && icacls "%%f" /grant administrators:F
    if exist "%%f" ( 
      del "%%f"
      echo "Deleted cache file: %%f"
    ) else (
      rd /s /q "%%f"
      echo "Deleted cache folder: %%f"
    )
  )
)

for /r "%target_folder%" %%f in (*) do (
  set file_name=%%~nxf
  if "!file_name!"=="!file_name:log=!" (
    echo "Found cache file: %%f"
    takeown /f "%%f" && icacls "%%f" /grant administrators:F
    if exist "%%f" ( 
      del "%%f"
      echo "Deleted cache file: %%f"
    ) else (
      rd /s /q "%%f"
      echo "Deleted cache folder: %%f"
    )
  )
)

for /r "%target_folder%" %%f in (*) do (
  set file_name=%%~nxf
  if "!file_name!"=="!file_name:tmp=!" (
    echo "Found cache file: %%f"
    takeown /f "%%f" && icacls "%%f" /grant administrators:F
    if exist "%%f" ( 
      del "%%f"
      echo "Deleted cache file: %%f"
    ) else (
      rd /s /q "%%f"
      echo "Deleted cache folder: %%f"
    )
  )
)