build:
	hugo -d docs
	git add .
	git commit -m "automatic message"
	git push