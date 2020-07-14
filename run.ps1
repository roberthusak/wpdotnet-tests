$dbContainer = "wptest-db"

# Run MySQL using Docker
& docker run --name $dbContainer --detach --rm -p 3306:3306 wordpress-db:latest --max-connections=501

# Wait for MySQL to initialize
Start-Sleep -s 15

# Run tests
Push-Location ./wordpress-develop
$env:WP_TESTS_SKIP_INSTALL = '1'
& dotnet phpunit --no-build
Pop-Location

# Stop MySQL
& docker stop -t 3 $dbContainer
