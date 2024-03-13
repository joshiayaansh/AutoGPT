echo installing depedencies
REM Install Python dependencies
pip install -r requirements.txt
pip list
echo installing git
REM Install Git (if not already installed)
REM Note: You may need to modify this command to point to the correct Git executable location
choco install git -y
echo extracting files
REM Extract and copy cli.py
cd /D "%USERPROFILE%\Downloads"
tar -xf autogpt.zip

mkdir "%USERPROFILE%\Downloads\autogpt-%USERNAME%"
copy cli.py "%USERPROFILE%\Downloads\autogpt-%USERNAME%\"

REM Check Git version
git --version
echo running git repo scripts
REM Initialize Git repository and add cli.py
cd /D "%USERPROFILE%\Downloads\autogpt-%USERNAME%" || exit
git init
git add cli.py
git commit -m "Add cli.py file"
echo done


