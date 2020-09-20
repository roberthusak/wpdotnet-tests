$dbContainer = "wptest-db"

# Run MySQL using Docker
& docker run --name $dbContainer --detach --rm -p 3306:3306 wordpress-db:latest --max-connections=601

# Wait for MySQL to initialize
Start-Sleep -s 15

# Run tests
& dotnet test ./wordpress-develop/PeachPied.WordPress.Tests.msbuildproj --no-build

# Stop MySQL
& docker stop -t 3 $dbContainer
