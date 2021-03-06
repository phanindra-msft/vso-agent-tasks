[cmdletbinding()]
param()

# Arrange.
. $PSScriptRoot\..\..\lib\Initialize-Test.ps1
. $PSScriptRoot\..\..\..\Tasks\Gulp\Helpers.ps1

# Act.
$actual = Format-ArgumentsParameter -GulpFile 'Some gulp file' -Arguments 'Some arguments'

# Assert.
Assert-AreEqual -Expected '--gulpfile "Some gulp file" Some arguments' -Actual $actual
