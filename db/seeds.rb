# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Story.create(title: "Die Kat", content: "Dit is ’n kat.
Die kat is klein.
Die kat sien ’n bal.
Die kat speel met die bal.
Die kat is bly.")

Story.create(title: "Die Hond", content: "Dit is ’n hond.
Die hond is groot.
Die hond sien ’n man.
Die hond hardloop.
Die hond is bly.")

Story.create(title: "Die Son", content: "Die son is warm.
Die son is hoog.
Ek sien die son.
Ek loop buite.
Ek is bly.")

Story.create(title: "Die Kat en die Bal", content: "Daar is ’n klein grys kat wat in ’n huis woon.
Elke dag loop die kat deur die kamers en kyk rond.
Een middag sien hy ’n rooi bal op die vloer lê.
Hy raak nuuskierig en stoot die bal met sy poot.
Die bal rol vinnig weg en die kat hardloop agterna.
Hy spring, rol en speel vir ’n lang tyd.
Later raak die kat baie moeg.
Hy lê in die warm son by die venster en raak aan die slaap.")

Story.create(title: "Jan se Hond", content: "Jan is ’n jong seun wat baie lief is vir diere.
Hy het ’n hond met die naam Max.
Max is groot, bruin en baie speels.
Elke oggend neem Jan vir Max buite toe.
Hulle stap saam in die straat en groet mense.
Max hou daarvan om te hardloop en bal te vang.
Wanneer hulle huis toe gaan, gee Jan vir Max kos.
Max lê toe rustig en rus.")

Story.create(title: "Die Son en die Voël", content: "Die son kom vroeg op in die oggend.
Die lug is blou en helder.
’n Klein voël sit bo-op ’n boomtak.
Die voël skud sy vlerke en begin sing.
Mense hoor die voël se lied en glimlag.
Blomme maak oop in die sonlig.
Dit voel warm en rustig buite.
Dit is ’n perfekte dag.")

Story.create(title: "Maria se Appel", content: "Maria sit in die klas by die skool.
Dit is pouse en sy is honger.
Sy haal ’n appel uit haar tas.
Die appel is rooi en blink.
Maria gaan was eers die appel.
Toe byt sy daaraan.
Die appel is soet en sappig.
Sy eet alles op en voel vol.")

Story.create(title: "Die Groot Boom", content: "In die middel van die park staan ’n groot ou boom.
Die boom is al baie jare daar.
Sy takke is breed en sy blare is groen.
Voëls sit hoog in die boom en sing.
Kinders speel onder die boom se skaduwee.
Sommige kinders sit en lees boeke.
Ander eet hul middagete.
Die boom gee koelte en rus vir almal.")

Story.create(title: "Piet Gaan Skool Toe", content: "Piet word elke oggend vroeg wakker.
Hy maak sy bed op en trek sy klere aan.
In die kombuis eet hy ontbyt saam met sy familie.
Hy drink melk en eet brood.
Toe vat hy sy skooltas.
Hy stap skool toe met sy vriende.
By die skool leer hy lees en skryf.
Piet hou daarvan om nuwe dinge te leer.")

Story.create(title: "Die Reëndag", content: "Donker wolke kom stadig oor die lug.
Die wind begin waai.
Kort daarna begin dit reën.
Die reën val sag op die dakke.
Die grond word nat en vars.
Kinders trek hul reënjasse aan.
Hulle loop buite en spring in waterplasse.
Almal lag en geniet die reën.")

Story.create(title: "Sara se Katjie", content: "Sara het ’n klein wit katjie gekry.
Die katjie het blou oë en sagte hare.
Dit volg Sara oral in die huis.
Die katjie speel met balle en toue.
Later raak dit moeg van speel.
Dit klim op Sara se skoot.
Sara streel die katjie sag.
Die katjie spin gelukkig.")

Story.create(title: "Die Klein Vis", content: "Daar is ’n dam naby die plaas.
In die dam swem ’n klein silwer vis.
Die water is koel en skoon.
Die vis swem saam met ander visse.
Hulle speel tussen die plante.
Soms spring ’n vis bo die water uit.
Later gaan die klein vis wegkruip.
Hy voel veilig in die dam.")

Story.create(title: "Ouma se Huis", content: "Ouma woon in ’n klein huisie op die dorp.
Haar huis is altyd netjies en warm.
Wanneer die kinders kom kuier, is sy baie bly.
Sy bak koekies en kook tee.
Die huis ruik heerlik.
Die kinders sit by die tafel en luister na stories.
Ouma vertel van die ou dae.
By Ouma se huis voel almal geliefd.")
