# Builds dist/aegan.html: index.html with css/style.css and js/game.js inlined into one file.
# The single file is what gets published as the Claude artifact; index.html runs as-is on GitHub Pages.
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$utf8 = New-Object Text.UTF8Encoding $false
$index = [IO.File]::ReadAllText((Join-Path $root 'index.html'))
$css = [IO.File]::ReadAllText((Join-Path $root 'css/style.css'))
$js = [IO.File]::ReadAllText((Join-Path $root 'js/game.js'))

# The artifact host supplies the document wrapper, so keep only what sits inside <head> and <body>.
$head = [regex]::Match($index, '(?s)<meta name="viewport"[^>]*>\s*(.*?)</head>').Groups[1].Value
$body = [regex]::Match($index, '(?s)<body>\s*(.*?)</body>').Groups[1].Value
$head = $head.Replace('<link rel="stylesheet" href="css/style.css">', "<style>`n$css</style>")
$body = $body.Replace('<script src="js/game.js"></script>', "<script>`n$js</script>")

New-Item -ItemType Directory -Force (Join-Path $root 'dist') | Out-Null
[IO.File]::WriteAllText((Join-Path $root 'dist/aegan.html'), ($head.Trim() + "`n`n" + $body.Trim() + "`n"), $utf8)
Write-Output "Built dist/aegan.html"
