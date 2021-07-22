& dotnet-sonarscanner begin /k:"BubaDatenImport" /d:sonar.cs.vscoveragexml.reportsPaths="*.coveragexml" /d:sonar.cs.vstest.reportsPaths="*.trx" /d:sonar.verbose=true /d:sonar.log.level="TRACE" /d:sonar.host.url="http://localhost:9000" /d:sonar.login="secret_key"`

& dotnet build "DataImport.sln"
    
& dotnet test "RepoLendImportTests.csproj" --collect "Code Coverage" --logger trx --results-directory "TestsResults"
& dotnet test "GenericReadersAndWritersTests.csproj" --collect "Code Coverage" --logger trx --results-directory "TestsResults"
   
& Get-ChildItem -Recurse -Filter "*.coverage" | Foreach-Object {
    $outfile = "$([System.IO.Path]::GetFileNameWithoutExtension($_.FullName)).coveragexml"
    $output = [System.IO.Path]::Combine([System.IO.Path]::GetDirectoryName($_.FullName), $outfile)
    & $env:CodeCoveragePath\CodeCoverage.exe analyze /output:$output $_.FullName 
}
    
& Get-ChildItem -Recurse -Filter "*.coveragexml" | Foreach-Object { 
    $file = Join-Path -Path $_.Directory -ChildPath $_.Name
    Copy-Item $file -Destination 'TestsResults'
}
    
& dotnet-sonarscanner end