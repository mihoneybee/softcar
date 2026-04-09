Function Replace-Encoding {
    param([string]$c)
    $c = $c.Replace([char]195 + [char]161, [string][char]225) # á
    $c = $c.Replace([char]195 + [char]160, [string][char]224) # à
    $c = $c.Replace([char]195 + [char]162, [string][char]226) # â
    $c = $c.Replace([char]195 + [char]163, [string][char]227) # ã
    $c = $c.Replace([char]195 + [char]169, [string][char]233) # é
    $c = $c.Replace([char]195 + [char]168, [string][char]232) # è
    $c = $c.Replace([char]195 + [char]170, [string][char]234) # ê
    $c = $c.Replace([char]195 + [char]173, [string][char]237) # í
    $c = $c.Replace([char]195 + [char]179, [string][char]243) # ó
    $c = $c.Replace([char]195 + [char]180, [string][char]244) # ô
    $c = $c.Replace([char]195 + [char]181, [string][char]245) # õ
    $c = $c.Replace([char]195 + [char]186, [string][char]250) # ú
    $c = $c.Replace([char]195 + [char]167, [string][char]231) # ç
    
    $c = $c.Replace([char]195 + [char]130, [string][char]194) # Â
    $c = $c.Replace([char]195 + [char]131, [string][char]195) # Ã
    $c = $c.Replace([char]195 + [char]137, [string][char]201) # É
    $c = $c.Replace([char]195 + [char]138, [string][char]202) # Ê
    $c = $c.Replace([char]195 + [char]141, [string][char]205) # Í
    $c = $c.Replace([char]195 + [char]147, [string][char]211) # Ó
    $c = $c.Replace([char]195 + [char]148, [string][char]212) # Ô
    $c = $c.Replace([char]195 + [char]149, [string][char]213) # Õ
    $c = $c.Replace([char]195 + [char]154, [string][char]218) # Ú
    $c = $c.Replace([char]195 + [char]135, [string][char]199) # Ç

    # Punctuation
    $c = $c.Replace([char]226 + [char]128 + [char]147, [string][char]8211) # –
    $c = $c.Replace([char]226 + [char]128 + [char]148, [string][char]8212) # —
    $c = $c.Replace([char]226 + [char]128 + [char]152, [string][char]8216) # ‘
    $c = $c.Replace([char]226 + [char]128 + [char]153, [string][char]8217) # ’
    $c = $c.Replace([char]226 + [char]128 + [char]156, [string][char]8220) # “
    $c = $c.Replace([char]226 + [char]128 + [char]157, [string][char]8221) # ”

    # Check for Í/Á space anomaly (Ã followed by nothing) 0xC3 0x81
    $c = $c.Replace([char]195 + [char]129, [string][char]193) # Á

    return $c
}

$files = Get-ChildItem -Filter *.html
foreach ($file in $files) {
    if ($file.Name -match "Atividade Aula03" -or $file.Name -match "links.html" -or $file.Name -match "formatacao.html") {
        continue
    }
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    $content = Replace-Encoding -c $content
    [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
}
Write-Output "Done"
