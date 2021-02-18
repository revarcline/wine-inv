# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

margeaux = Appellation.create(name: 'Margeaux')
mersault = Appellation.create(name: 'Merseault')
cdp = Appellation.create(name: 'Chatauneuf du Pape')
nuits = Appellation.create(name: 'Nuits-Saint-Georges')
napa = Appellation.create(name: 'Napa')
chianti = Appellation.create(name: 'Chianti')

jadot = Producer.create(name: 'Louis Jadot')
cht_marg = Producer.create(name: 'Chateau Margeaux')
beaucastel = Producer.create(name: 'Cheateau de Beaucastel')
opus = Producer.create(name: 'Opus One')
antinori = Producer.create(name: 'Villa Antinori')

pinot_noir = Varietal.create(name: 'Pinot Noir')
cab_sauv = Varietal.create(name: 'Cabernet Sauvignon')
cab_franc = Varietal.create(name: 'Cabernet Franc')
merlot = Varietal.create(name: 'Merlot')
malbec = Varietal.create(name: 'Malbec')
verdot = Varietal.create(name: 'Petit Verdot')
chard = Varietal.create(name: 'Chardonnay')
gren = Varietal.create(name: 'Grenache')
syrah = Varietal.create(name: 'Syrah')
mouv = Varietal.create(name: 'Mouvedre')
sang = Varietal.create(name: 'Sangiovese')

Bottle.create(
  name: 'Blagny Premier Cru',
  bin: 'X24',
  vintage: 2015,
  appellation: mersault,
  producer: jadot,
  varietals: [chard],
  desc: 'Balanced and creamy, this white will please many. Peach, apple, honey and spice flavors abound and the smooth texture carries them well. Finishes with a fresh, lemon- and spice-tinged aftertaste.'
)

Bottle.create(
  name: 'Pavillion Rouge',
  bin: 'Y14',
  vintage: 2015,
  appellation: margeaux,
  producer: cht_marg,
  varietals: [cab_sauv, merlot, cab_franc, malbec, verdot],
  desc: 'With a high proportion of Cabernet Sauvignon, this is a seriously structured wine. It is ripe with a shot of fine acidity and tannins that give the wine great shape and freshness. The structure is what will give this wine its longevity.'
)

Bottle.create(
  name: 'Chateau Beaucastel Rouge',
  bin: 'E09',
  vintage: 2012,
  appellation: cdp,
  producer: beaucastel,
  varietals: [gren, syrah, mouv],
  desc: 'What I think might end up being the best Beaucastel since the 1990 or 2001, the 2012 Châteauneuf du Pape offers a full-bodied, decadent style to go with awesome black and blue fruits, garrigue, licorice, crushed flowers and violets. The purity here is truly something, and it has fabulous mid-palate concentration, building tannin and massive texture. Given all of the fruit and texture here, it will no doubt drink well in its youth, but it should still be alive and kicking after two decades as well.'
)

Bottle.create(
  name: 'Les Saint-Georges Premier Cru',
  bin: 'C40',
  vintage: 2018,
  appellation: nuits,
  producer: jadot,
  varietals: [pinot_noir],
  desc: "Once again, the 2018 Nuits-Saint-Georges 1er Cru Les Saint Georges (Maison Louis Jadot) is one of the real successes in Jadot's négociant portfolio. Offering up a deep-pitched bouquet of cassis, sweet wild berries, grilled squab, orange rind and rich soil tones, it's medium to full-bodied, layered and elegant, with refined tannins lively acids and promising depth at the core."
)

Bottle.create(
  name: 'Opus One',
  bin: 'R19',
  vintage: 2002,
  appellation: napa,
  producer: opus,
  varietals: [cab_sauv, merlot, cab_franc, malbec, verdot],
  desc: 'It boasts a dense plum/purple hue along with a striking bouquet of graphite, toasty oak, creme de cassis and acacia flowers. Full-bodied, opulent and young, it offers accessibility as well as silky tannins. A thoroughly complete wine that is pure and rich, it tastes like a hypothetical blend of a great Napa Valley Cabernet Sauvignon married to a Bordeaux Pauillac. Bravo! It will benefit from 2-3 more years of cellaring and should keep for 20-25 thereafter.'
)

Bottle.create(
  name: 'Riserva',
  bin: 'U13',
  vintage: 2016,
  appellation: chianti,
  producer: antinori,
  varietals: [sang, cab_sauv],
  desc: 'Black currant, cedar, olive, iron and tobacco aromas and flavors suggest Cabernet in the blend, in a positive sense. This red is fluid, elegant and firmly structured, with fine balance and a long, gripping finish. The taut profile shows the potential for aging. Best from 2022 through 2038.'
)
