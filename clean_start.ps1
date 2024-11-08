# shutdown all the containers
docker compose -f .\docker-compose.yml down

# Cleans the volume files & folders (in order to perform a clean start)
Remove-Item .\.docker\postgres\* -Recurse | Remove-Item
Remove-Item .\.docker\pgadmin\* -Recurse | Remove-Item
Remove-Item .\.docker\mailpit\* -Recurse | Remove-Item

# starts all the containers
docker compose -f .\docker-compose.yml up