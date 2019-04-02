SET "PATH=C:\Program Files\Python36\;C:\Program Files\Python36\Scripts\;%PATH%"

SET DIR=%~dp0
cd %DIR%
cd ..

IF NOT EXIST venv (python -m venv venv)

call venv\Scripts\activate

python -m pip install -r scripts\requirements.txt
python -m jupyter notebook
