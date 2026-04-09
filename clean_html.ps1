$files = Get-ChildItem -Filter *.html
foreach ($file in $files) {
    if ($file.Name -match "Atividade Aula03" -or $file.Name -match "formatacao.html" -or $file.Name -match "links.html") {
        continue
    }

    $content = Get-Content $file.FullName -Raw -Encoding UTF8

    # Table cleanup
    $content = $content -replace '<table align="center" border="1" cellpadding="10" bgcolor="#1a1a1a" style="border-collapse: collapse; text-align: center; border: 2px solid red;">', '<table>'
    $content = $content -replace '<table align="center" border="1" cellpadding="10" bgcolor="#0b0b0b" style="border-collapse: collapse; text-align: left; width: 60%; color: white;">', '<table class="specs-table">'
    $content = $content -replace '<table align="center" border="0" cellpadding="5">', '<table class="gallery-table">'
    $content = $content -replace '<table border="1" cellpadding="10" align="center" style="color: black; background-color: #ecf0f1; width: 100%;">', '<table>'
    $content = $content -replace '<table align="center" class="galeria-tabela" border="0">', '<table class="galeria-tabela">'

    # HR cleanup
    $content = $content -replace '<hr color="red" size="2" width="100%">', '<hr>'
    $content = $content -replace '<hr color="red" size="2" width="90%">', '<hr>'
    $content = $content -replace '<hr width="80%" size="2" color="red">', '<hr>'

    # TD inline cleanup
    $content = $content -replace 'bgcolor="#1a1a1a"', ''
    $content = $content -replace 'bgcolor="#c0392b"', ''
    $content = $content -replace 'bgcolor="#e67e22"', ''
    $content = $content -replace 'bgcolor="#8e44ad"', ''
    $content = $content -replace 'bgcolor="#27ae60"', ''
    $content = $content -replace 'bgcolor="#2980b9"', ''
    $content = $content -replace ' style="color: white;"', ''
    
    # Body inline
    $content = $content -replace '<body bgcolor="#0b0b0b">', '<body>'

    [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
}
Write-Output "Cleaned HTML"
