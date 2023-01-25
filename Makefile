up:
	docker-compose up;

dbprepare:
	bin/rails db:setup db:test:prepare db:schema:load db:migrate RAILS_ENV=test;

dbreseed:
	bin/rails db:drop db:create db:migrate db:seed;

ci:
	make brakeman rubocop;

brakeman:
	bin/brakeman;

rubocop:
	bin/rubocop;

rubocop-fix:
	bin/rubocop -A;
