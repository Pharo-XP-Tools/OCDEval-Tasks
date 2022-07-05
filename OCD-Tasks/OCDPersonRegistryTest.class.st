Class {
	#name : #OCDPersonRegistryTest,
	#superclass : #TestCase,
	#instVars : [
		'registry'
	],
	#category : #'OCD-Tasks-Warmup'
}

{ #category : #tests }
OCDPersonRegistryTest class >> persons [
<example>
	| persons str wstr |
	persons := OrderedCollection new.
	str := '- Gengue
- Finbeu
- Nonnade
- Lefa
- Hadlongra
- Batcencai
- Siban
- Favi
- Gabac
- Dalquevan
- Metpai
- Dalven
- Cufou
- Lanphe
- Gebesin
- Betnancai
- Fasirta
- Termes
- Subsirnan
- Bafou
- Foulen
- Frasursub
- Quecouqui
- Rure
- Serfotu
- Liroch
- Libfa
- Dal
- Lutci
- Guenu
- Genindraa
- Batfarroch
- Caiher
- Sertamer
- Cubander
- Velgel
- Tragra
- Valnar
- Sanfilcou
- Pomon
- Plasine
- Ticvanhen
- Fanrenfo
- Daldes
- Pofin
- Bienonbamu
- Sinmetphi
- Plabe
- Clalib
- Lenfer
- Narpri
- Biebar
- Barcinon
- Paidrafoo
- Tamis
- Finlisuba
- Finbiedi
- Vansirgel
- Sesanu
- Foucire
- Metcene
- Guenirden
- Labe
- Rochdramsur
- Prepo
- Quapeu
- Finbacfan
- Denrannuon
- Denfarder
- Chepeu
- Bamquipreo
- Desbamque
- Guehersel
- Crodu
- Harmon
- Fartra
- Bacugue
- Harte
- Gregar
- Douvelbie

- Cenpierer
- Chefin
- Lanhicen
- Batli
- Tanbatba
- Venlib
- Lonpieve
- Duvenqui
- Riemal
- Libbeufo
- Traniru
- Cuduran
- Riefo
- Surdernaion
- Quebar
- Beyphe
- Gefin
- Haegensel
- Banga
- Bannuevan
- Croge
- Dram
- Bamtu
- Gasamini
- Quemetpre
- Dalnar
- Tufou
- Plefilnar
- Clabamlar
- Sehancroel
- Nuenai
- Pievegra
- Vanfilbat
- Claphe
- Finnuega
- Nonte
- Geminta
- Beynaven
- Batte
- Coubetgen
- Madec
- Hanfillion
- Ranonmis
- Coumisque
- Taqua
- Herlutbam
- Caihihad
- Mescufer
- Doufinle
- Caiquehel
- Rarer
- Founafo
- Helcion
- Sirtou
- Ciriefanen
- Frabatran
- Tulefa
- Traban
- Liderano
- Quide
- Bepiechi
- Prirebe
- Phifan
- Ninduven
- Dessub
- Tedouna
- Plavelru
- Narnin
- Peularphe
- Beuher
- Sirreren
- Filsersa
- Malhi
- Barselfo
- Bergen
- Ser
- Claqua
- Vanpaibie
- Ruhae
- Rabey
- Finpiedan
- Larsermon
- Sa
- Ranai
- Barnan
- Dandi
- Gretra
- Douval
- Talenbac
- Quecue
- Helfil
- Metfardou
- Gafragre
- Fiduu
- Ferfin
- Sirmai
- Defa
- Gentenbar
- Cyrmis
- Piedram
- Sirsannuee
- Plefidra
- Plaher
- Piechao
- Gemin
- Derpo
- Farsanfoi
- Chafartan
- Danlanel
- Derdutic
- Metrandram
- Fanvi
- Sannuru
- Drarer
- Chisurgaro
- Tefanvel
- Cubat
- Narmin
- Chelepie
- Ruselche
- Danrenmeuu

- Cige
- Nairen
- Sinmalquaen
- Cladouder
- Fanberqui
- Filcihad
- Founar
- Sevel
- Selpai
- Fachao
- Dalbal
- Quafinu
- Granai
- Tanbetbie
- Posan
- Paigrau
- Caipriga
- Fanpeugre
- Ninprecuu
- Drasifrae
- Bathane
- Cenge
- Mingra
- Metquater
- Sinde
- Guebie
- Phitaban
- Revel
- Beselvi
- Rebeyi
- Metgraber
- Peuru
- Bansi
- Quibercyr
- Garvenel
- Potelfa
- Rusurvene
- Duvelden
- Cuchebac
- Subder
- Cudraen
- Sinai
- Dechefaro
- Gresi
- Dergenpeu
- Beyfinmes
- Coula
- Nontenfanu
- Denserre
- Benaiteno
- Falontan
- Lefou
- Mesbarpla
- Herlonnin
- Rochdramnin
- Beybetque
- Mamerhad
- Cenvellan
- Detenfan
- Beulefer
- Rodes
- Maduu
- Ningrefan
- Plebergel
- Nonte
- Nanninma
- Pailerbane
- Bermamal
- Grebarmin
- Fouge
- Malmet
- Rebarde
- Fincroru
- Sinnantuel
- Lernuehen
- Barnaipai
- Virerchien
- Couhen
- Sirviel
- Tercou
- Madec
- Herre
- Finranhi
- Plahad
- Chabeufan
- Hitersur
- Velbeusel
- Draficyr
- Vibatra
- Beuberli
- Ralarsaa
- Crotu
- Phiguefar
- Gesin
- Berpeufil
- Tanbache
- Lerfouran
- Monsercu
- Hennon
- Nubafin
- Napheon
- Fovele
- Dibalfi
- Dalmeu
- Plehae
- Piemincla
- Dechie
- Cailut
- Malbaga
- Fohipre
- Velvision
- Nanpo
- Mafanel
- Cainirmeuon
- Tugecen
- Naquiro
- Bamgel
- Sintou
- Coulermalon
- Licu
- Bervi' readStream.
	wstr := WriteStream on: String new.
	[ str atEnd ] whileFalse: [ wstr << (str upTo: $-) ].
	^ ((wstr contents splitOn: Character cr) collect:[:n| OCDPerson named: n]) 
]

{ #category : #tests }
OCDPersonRegistryTest >> persons [
	^ self class persons
]

{ #category : #running }
OCDPersonRegistryTest >> setUp [
	super setUp.
	
	registry := OCDPersonRegistry new
]

{ #category : #tests }
OCDPersonRegistryTest >> testPersonsAge [
	|persons personOfInterest|
	persons := self persons.
	personOfInterest := persons at: 203.
	persons do:[:p| p registerOn: registry].
	self assert: personOfInterest age > 0
]

{ #category : #tests }
OCDPersonRegistryTest >> testRegisterPersons [
	|persons personOfInterest|
	persons := self persons.
	personOfInterest := persons at: 284.
	persons do:[:p| p registerOn: registry].
	self assert: (registry allPersons includes: personOfInterest)
]
