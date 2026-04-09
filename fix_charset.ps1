$files = Get-ChildItem -Filter *.html
foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Lowercase characters
    $content = $content.Replace("Ã¡", "á")
    $content = $content.Replace("Ã ", "à")
    $content = $content.Replace("Ã¢", "â")
    $content = $content.Replace("Ã£", "ã")
    $content = $content.Replace("Ã©", "é")
    $content = $content.Replace("Ã¨", "è")
    $content = $content.Replace("Ãª", "ê")
    $content = $content.Replace("Ã­", "í")
    $content = $content.Replace("Ã³", "ó")
    $content = $content.Replace("Ã´", "ô")
    $content = $content.Replace("Ãµ", "õ")
    $content = $content.Replace("Ãº", "ú")
    $content = $content.Replace("Ã§", "ç")
    
    # Uppercase characters
    $content = $content.Replace("Ã ", "À")
    $content = $content.Replace("Ã‚", "Â")
    $content = $content.Replace("Ãƒ", "Ã")
    $content = $content.Replace("Ã‰", "É")
    $content = $content.Replace("ÃŠ", "Ê")
    $content = $content.Replace("Ã ", "Í")
    $content = $content.Replace("Ã“", "Ó")
    $content = $content.Replace("Ã”", "Ô")
    $content = $content.Replace("Ã•", "Õ")
    $content = $content.Replace("Ãš", "Ú")
    $content = $content.Replace("Ã‡", "Ç")
    
    # Punctuation / other
    $content = $content.Replace("â€“", "–")
    $content = $content.Replace("â€”", "—")
    $content = $content.Replace("â€˜", "‘")
    $content = $content.Replace("â€™", "’")
    $content = $content.Replace("â€œ", "“")
    $content = $content.Replace("â€ ", "”")

    # The manual space issue with Ã
    $content = $content.Replace("Ã ", "Á") # Fallback for sometimes broken Ã followed by spaces
    
    [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
}

Write-Output "Encoding corrigido!"
