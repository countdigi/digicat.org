serve:
	hugo server \
		--bind=0.0.0.0 \
		--baseURL=http://$$(hostname --all-ip-addresses | cut -d' ' -f1) \
		--watch \
		--forceSyncStatic \
		--disableFastRender

publish:
	hugo; \
	cd public; \
	git add .; \
	git commit -m "Update"; \
	git push origin master
