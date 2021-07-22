dotnet test "RepoLendImportTests/RepoLendImportTests.csproj" /p:CollectCoverage=true /p:CoverletOutputFormat=opencover
dotnet build-server shutdown

dotnet test "GenericReadersAndWritersTests/GenericReadersAndWritersTests.csproj" /p:CollectCoverage=true /p:CoverletOutputFormat=opencover
dotnet build-server shutdown


dotnet-sonarscanner begin /k:"BubaDatenImportVarianteJo" /d:sonar.cs.vscoveragexml.reportsPaths="**.coveragexml"  /d:sonar.coverage.exclusions="**Tests*.cs"  /d:sonar.log.level="WARN" /d:sonar.host.url="http://localhost:9000" 

dotnet build "DataImport.sln"
    
    
dotnet-sonarscanner end