mysqlstart:
	@echo "Starting MySQL container..."
	@docker run --name technos -e MYSQL_ROOT_PASSWORD="/Fq7ZauZU2DgcSZDXImw0w==" -p 3306:3306 -d mysql:8.4.2
	@echo "MySQL container started."

mysqlstop:
	@echo "Stopping MySQL container..."
	@docker stop technos
	@docker rm technos
	@echo "MySQL container stopped."
