serve:
	mkdir -p /tmp/bundle
	docker run \
		--rm \
		--mount type=bind,source=$(CURDIR),target=/srv/jekyll \
		--mount type=bind,source=/tmp/bundle,target=/usr/local/bundle \
		--env JEKYLL_ENV=development \
		-p 4000:4000 \
		jekyll/jekyll:4.0 \
		jekyll serve --watch --force_polling

ngrok:
	ngrok http 4000