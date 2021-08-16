# Cleanup database
clean:
	rm -fR ./es/data ./db/mysql_data

# Destroy all environment
destory:
	cd ./db; \
	rm -fR mysql_data; \
	cd ../; \
	docker-compose down --rmi all --volumes --remove-orphans;

# Shorthand of running docker images
run:
	docker-compose --env-file ./.env up --build;