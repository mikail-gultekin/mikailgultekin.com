build:
	hugo -d docs
	git add .
	git commit -m "automatıc message"
	git push