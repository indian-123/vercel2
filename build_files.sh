# build_files.sh
echo "build.."
python3.9 -m pip install -r requirements.txt
echo "make migration ...."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "collect staic  .."
python3.9 manage.py collectstatic --noinput --clear

