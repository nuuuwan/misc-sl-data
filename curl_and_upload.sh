DATE='date +%Y-%m-%d'

curl https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/3a3d399c-85e1-4872-b610-3245b7544de4/conflict_data_lka.csv > conflict_data_lka.csv

git add *
git commit -a -m "Daily Upload $DATE"
git push origin master
