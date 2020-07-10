# Remove underlying global.json files with Peachpie version to honor the version in the root global.json
Remove-Item ./peachpie-phpunit/global.json -ErrorAction Ignore
Remove-Item ./wpdotnet-sdk/global.json -ErrorAction Ignore

# Build dotnet-phpunit of version 7.5.9 - explicitly supported by WordPress tests (unlike newer versions)
& dotnet build ./peachpie-phpunit/src/dotnet-phpunit/dotnet-phpunit.csproj /p:PhpUnitVersion=7.5.9

# Install dotnet-phpunit per the manifest
& dotnet tool restore

# Build WordPress and its tests
& dotnet build ./wordpress-develop/PeachPied.WordPress.Tests.msbuildproj

# Build docker image for MySQL database
& docker build --tag wordpress-db:latest --file db.Dockerfile .
