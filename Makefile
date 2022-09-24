run:
	flutter run -d chrome

upgrade:
	flutter upgrade

upload-data:
	aws-sm s3 sync --delete './assets/data' s3://wheeloftime.silvermast.io/v2/data
	aws-sm cloudfront create-invalidation --distribution-id E1IQN1E4JD6ZW1 --paths "/v2/*" | tee
