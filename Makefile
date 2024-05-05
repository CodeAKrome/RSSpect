install:
	pip install -r requirements.txt
format:
	black RSSpect/*.py RSSpect/nellie/*.py
dev:
	cd RSSpect; python manage.py runserver 0.0.0.0:8000
nellie:
	cat testdata/rssfeeds.tsv | code/snoopy.py >> data/rssfeeds.json
test-nellie:
	cat testdata/single_rssfeed.tsv | python code/snoopy.py >> testrun/rssfeeds.json
