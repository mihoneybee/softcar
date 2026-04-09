$cars = @(
    @("ferrari-monza-sp2.html", "Ferrari Monza SP2", "https://www.planetcarsz.com/img/carros/2026/03/ferrari-monza-sp2-rosso-corsa-2021-001-20260301192412-1600x900.jpg"),
    @("ferrari-roma-spider.html", "Ferrari Roma Spider", "https://www.planetcarsz.com/assets/uploads/2019/11/FERRARI%20ROMA%202020%200002.jpg"),
    @("ferrari-f8.html", "Ferrari F8 Tributo", "https://www.planetcarsz.com/assets/uploads/2020/08/FERRARI%20F8%20TRIBUTO%202020%200054.jpg"),
    @("bugatti-chiron.html", "Bugatti Chiron", "https://www.planetcarsz.com/img/carros/2024/09/bugatti-chiron-pur-sport-gp-2024-001-20240902143003-1600x900.jpg"),
    @("bugatti-la-voiture-noire.html", "Bugatti La Voiture", "https://www.planetcarsz.com/img/carros/2024/05/bugatti-la-voiture-noire-2019-001-20240502120000-1600x900.jpg"),
    @("lamborghini-huracan.html", "Lamborghini Huracán", "https://www.planetcarsz.com/assets/uploads/2020/09/LAMBORGHINI%20HURACAN%20EVO%20RWD%202020%20002.jpg"),
    @("lamborghini-sian.html", "Lamborghini Sián", "https://www.planetcarsz.com/assets/uploads/2019/09/LAMBORGHINI%20SIAN%202020%2003.jpg"),
    @("lamborghini-urus.html", "Lamborghini Urus", "https://www.planetcarsz.com/assets/uploads/2017/12/LAMBORGHINI%20URUS%202019%2005.jpg"),
    @("mclaren-720s.html", "McLaren 720S", "https://www.planetcarsz.com/assets/uploads/2017/02/MCLAREN%20720S%202018%2001.jpg"),
    @("mercedes-maybach.html", "Mercedes Maybach", "https://www.planetcarsz.com/assets/uploads/2020/11/MERCEDES%20BENZ%20MAYBACH%20S%20CLASS%202021%2004.jpg"),
    @("pagani-huayra.html", "Pagani Huayra", "https://www.planetcarsz.com/assets/uploads/2020/03/PAGANI%20HUAYRA%20ROADSTER%20BC%202020%2003.jpg"),
    @("porsche-911.html", "Porsche 911 Turbo", "https://www.planetcarsz.com/assets/uploads/2020/03/PORSCHE%20911%20TURBO%20S%20CABRIOLET%202021%2002.jpg"),
    @("rolls-royce-cullinan.html", "Rolls-Royce Cullinan", "https://www.planetcarsz.com/assets/uploads/2018/05/ROLLS%20ROYCE%20CULLINAN%202019%2005.jpg"),
    @("rolls-royce-phantom.html", "Rolls-Royce Phantom", "https://www.planetcarsz.com/assets/uploads/2017/07/ROLLS%20ROYCE%20PHANTOM%202018%2001.jpg"),
    @("bentley-bentayga.html", "Bentley Bentayga", "https://www.planetcarsz.com/assets/uploads/2020/06/BENTLEY%20BENTAYGA%202021%2001.jpg"),
    @("bentley-flying.html", "Bentley Flying Spur", "https://www.planetcarsz.com/assets/uploads/2019/06/BENTLEY%20FLYING%20SPUR%202020%2001.jpg")
)

$template = @"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Tag TITLE exigida para o nome da aba -->
    <title>SOFTCAR | {{TITLE}}</title>
    <!-- Referência ao arquivo de estilos principal sem css inline em excesso -->
    <link rel="stylesheet" href="styles.css">
</head>
<body bgcolor="#0b0b0b">
    <!-- Div do Menu Principal replicada -->
    <div class="menu">
        <!-- Navegação padrão Anchor Tag A -->
        <a href="index.html">Home</a>
        <a href="briefing.html">Empresa</a>
        <a href="galeria.html">Galeria</a>
        <a href="textos.html">Textos</a>
        <a href="documentos.html">Documentos</a>
        <a href="tabela.html">Tabelas</a>
        <a href="formatacao.html">Formatação</a>
        <a href="listas.html">Listas</a>
        <a href="links.html">Links</a>
    </div>

    <!-- Div container centralizadora -->
    <div class="container">
        <!-- Título H1 utilizado para a identificação do nome do automóvel -->
        <h1>{{TITLE}}</h1>
        
        <!-- Bloco para centralizar a imagem principal com ajuste via atributo do HTML raiz -->
        <div align="center">
            <img src="{{IMG}}" width="600" height="auto" alt="{{TITLE}}" style="border: 2px solid red;">
        </div>

        <!-- Separadores manuais -->
        <br>
        <hr color="red" size="1" width="80%">

        <h2 align="center">Galeria Restrita e Mídia</h2>
        <!-- Tabela utilizada para simular a grid das thumbnails, técnica visual da Aula 3 -->
        <table align="center" border="0" cellpadding="5">
            <!-- Primeira e única linha da tabela -->
            <tr>
                <td><img src="{{IMG}}" width="180" height="120" style="border: 1px solid white;"></td>
                <td><img src="{{IMG}}" width="180" height="120" style="border: 1px solid white;"></td>
                <td><img src="{{IMG}}" width="180" height="120" style="border: 1px solid white;"></td>
            </tr>
        </table>
        
        <br>
        
        <!-- Iframe do Youtube importado via HTML em código-fonte -->
        <h3 align="center">Conheça através do Youtube:</h3>
        <p align="center">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/QIlOZFmHfVs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </p>

        <!-- Ficha Técnica utilizando estrutura simples de marcação e tabela -->
        <hr color="red" size="1" width="80%">
        <h3 align="center">Ficha Técnica Simplificada</h3>
        <!-- Tabela em conformidade com o que foi ensinado durante a Formatação -->
        <table align="center" border="1" cellpadding="10" bgcolor="#0b0b0b" style="border-collapse: collapse; text-align: left; width: 60%; color: white;">
            <!-- TR de linha da tabela e TD preenchidos com as bordas ativadas -->
            <tr>
                <td bgcolor="#1a1a1a" width="50%"><b>Velocidade Máxima</b></td>
                <td>Mais de 300 km/h</td>
            </tr>
            <tr>
                <td bgcolor="#1a1a1a"><b>Origem</b></td>
                <td>União Europeia e Continente</td>
            </tr>
            <tr>
                <td bgcolor="#1a1a1a"><b>Status de Venda</b></td>
                <td>Sob Encomenda Internacional</td>
            </tr>
        </table>
    </div>

    <br><br>

    <!-- Rodapé avaliativo contendo as exigências de nomenclatura dos Alunos -->
    <div class="footer">
        <p><strong>Desenvolvimento Web - Engenharia de Software</strong></p>
        <p class="footer-names">
            MEL ISIS COSTA SILVA – 22508420<br>
            GABRIELA YASMIN DA CONCEIÇÃO VIANA – 22505273<br>
            GUILHERME NEVES LOURENÇO – 22509395<br>
            VITOR DOS SANTOS WAMBURG – 22510570
        </p>
        <p>&copy; 2026 SOFTCAR. Todos os direitos reservados.</p>
    </div>
</body>
</html>
"@

foreach ($car in $cars) {
    $filename = $car[0]
    $title = $car[1]
    $img = $car[2]

    $content = $template.Replace("{{TITLE}}", $title).Replace("{{IMG}}", $img)
    
    [System.IO.File]::WriteAllText(".\$filename", $content, [System.Text.Encoding]::UTF8)
    Write-Output "Criado: $filename"
}
