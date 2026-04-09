const fs = require('fs');

const map = {
    'Ã¡': 'á',
    'Ã ': 'à',
    'Ã¢': 'â',
    'Ã£': 'ã',
    'Ã©': 'é',
    'Ã¨': 'è',
    'Ãª': 'ê',
    'Ã­': 'í',
    'Ã³': 'ó',
    'Ã´': 'ô',
    'Ãµ': 'õ',
    'Ãº': 'ú',
    'Ã§': 'ç',
    'Ã‚': 'Â',
    'Ãƒ': 'Ã',
    'Ã‰': 'É',
    'ÃŠ': 'Ê',
    'Ã\x8D': 'Í', // Í - might be represented weirdly but we'll try 
    'Ã“': 'Ó',
    'Ã”': 'Ô',
    'Ã•': 'Õ',
    'Ãš': 'Ú',
    'Ã‡': 'Ç',
    'â€“': '–',
    'â€”': '—',
    'â€˜': '‘',
    'â€™': '’',
    'â€œ': '“',
    'â€ ': '”',
    'Ã\x81': 'Á' // Á in UTF-8 -> Windows-1252 parsing is Ã + \x81 (which is unprintable char)
};

fs.readdirSync('.').filter(f => f.endsWith('.html')).forEach(file => {
    let content = fs.readFileSync(file, 'utf8');
    for (const [bad, good] of Object.entries(map)) {
        content = content.split(bad).join(good);
    }
    // Also explicitly cover "Ã " which might be Á followed by nothing printable
    // Let's replace 'Ã ' with 'Á ' ONLY IF it's likely Á. Note: We'll see if there's any left.
    // In textos.html: "AmÃ©rica", "MÃ¡quinas", but `Í` is `Ã ndice` -> Ã + space? No, \x8D is invisible, so it looks like Space in console, but in string it's `Ã\x8D`.
    // Let's just run this and check status.
    fs.writeFileSync(file, content, 'utf8');
});
console.log('Fixed');
