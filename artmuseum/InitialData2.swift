//
//  InitialData2.swift
//  artmuseum
//
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import Foundation

// Louvre
//ABC
class InitialData2 {
    var artWorks: [Artwork] = [Artwork]()
    init(){
        //init(_ title: String, _ author: String, _ text: String, _ id: String, _ year: String, _ room: String)
        let artWork1: Artwork = Artwork (
            "Mona Lisa",
            "Leonardo da Vinci",
            "The Mona Lisa or La Gioconda is a half-length portrait painting by the Italian Renaissance artist Leonardo da Vinci.\nThe painting is thought to be a portrait of Lisa Gherardini, the wife of Francesco del Giocondo, and is in oil on a white Lombardy poplar panel. It is believed to have been painted between 1503 and 1506, however Leonardo may have continued working on it as late as 1517. It was acquired by King Francis I of France and is now the property of the French Republic, on permanent display at the Louvre Museum in Paris since 1797.\n\nTitle and subject\nThe title of the painting, which is known in English as Mona Lisa, comes from a description by Renaissance art historian Giorgio Vasari, who wrote \"Leonardo undertook to paint, for Francesco del Giocondo, the portrait of Mona Lisa, his wife.\" Mona in Italian is a polite form of address originating as ma donna – similar to Ma’am, Madam, or my lady in English. This became madonna, and its contraction mona. The title of the painting, though traditionally spelled \"Mona\", is also commonly spelled in modern Italian as Monna Lisa (\"mona\" being a vulgarity in some Italian dialects) but this is rare in English.\nThe model, Lisa del Giocondo, was a member of the Gherardini family of Florence and Tuscany, and the wife of wealthy Florentine silk merchant Francesco del Giocondo. The painting is thought to have been commissioned for their new home, and to celebrate the birth of their second son, Andrea. The Italian name for the painting, La Gioconda, means \"jocund\" (\"happy\" or \"jovial\") or, literally, \"the jocund one\", a pun on the feminine form of Lisa's married name, \"Giocondo\". In French, the title La Joconde has the same meaning.\n\nAesthetics\nThe Mona Lisa bears a strong resemblance to many Renaissance depictions of the Virgin Mary, who was at that time seen as an ideal for womanhood.\nThe woman sits markedly upright in a \"pozzetto\" armchair with her arms folded, a sign of her reserved posture. Her gaze is fixed on the observer. The woman appears alive to an unusual extent, which Leonardo achieved by his method of not drawing outlines (sfumato). The soft blending creates an ambiguous mood \"mainly in two features: the corners of the mouth, and the corners of the eyes\".\nThe enigmatic woman is portrayed seated in what appears to be an open loggia with dark pillar bases on either side. Behind her, a vast landscape recedes to icy mountains. Winding paths and a distant bridge give only the slightest indications of human presence. Leonardo has chosen to place the horizon line not at the neck, but on a level with the eyes, thus linking the figure with the landscape and emphasizing the mysterious nature of the painting.\nMona Lisa has no clearly visible eyebrows or eyelashes.",
            "Mona_Lisa,_by_Leonardo_da_Vinci",
            "1503-1519",
            "Sala 1")
        
        let artWork2: Artwork = Artwork (
            "The Fortune Teller",
            "Caravaggio",
            "The Fortune Teller is a painting by Italian Baroque artist Michelangelo Merisi da Caravaggio. It exists in two versions, both by Caravaggio, the first from 1594 (now in the Musei Capitolini in Rome), the second from 1595 (which is in the Louvre museum, Paris). The dates in both cases are disputed.\nThe painting shows a foppishly-dressed boy (in the second version the model is believed to be Caravaggio's companion, the Sicilian painter Mario Minniti), having his palm read by a gypsy girl. The boy looks pleased as he gazes into her face, and she returns his gaze. Close inspection of the painting reveals what the young man has failed to notice: the girl is removing his ring as she gently strokes his hand.\nCaravaggio's biographer Giovanni Pietro Bellori relates that the artist picked the gypsy girl out from passers-by on the street in order to demonstrate that he had no need to copy the works of the masters from antiquity.\nThe 1594 Fortune Teller aroused considerable interest among younger artists and the more avant garde collectors of Rome, but, according to Mancini, Caravaggio's poverty forced him to sell it for the low sum of eight scudi. It entered the collection of a wealthy banker and connoisseur, the Marchese Vincente Giustiniani, who became an important patron of the artist. Giustiniani's friend, Cardinal Francesco Maria Del Monte, purchased the companion piece, Cardsharps, in 1595, and at some point in that year Caravaggio entered the Cardinal's household.\nFor Del Monte, Caravaggio painted a second version of The Fortune Teller, copied from the Giustiniani but with certain changes. The undifferentiated background of the 1594 version becomes a real wall broken by the shadows of a half-drawn curtain and a window sash, and the figures more completely fill the space and defining it in three dimensions. The light is more radiant, and the cloth of the boy's doublet and the girl's sleeves more finely textured. The dupe becomes more childlike and more innocently vulnerable, the girl less wary-looking, leaning in towards him, more in command of the situation.",
            "La_Diseuse_de_bonne_aventure,_Caravaggio",
            "1595",
            "Sala 1")
        
        let artWork3: Artwork = Artwork (
            "Liberty Leading the People",
            "Eugène Delacroix",
            "Liberty Leading the People is a painting by Eugène Delacroix commemorating the July Revolution of 1830, which toppled King Charles X of France. A woman personifying the concept and the Goddess of Liberty leads the people forward over a barricade and the bodies of the fallen, holding the flag of the French Revolution in one hand and brandishing a bayonetted musket with the other. The figure of Liberty is also viewed as a symbol of France and the French Republic known as Marianne.\nDelacroix painted his work in the autumn of 1830.\n\nSymbolism\nDelacroix depicted Liberty as both an allegorical goddess-figure and a robust woman of the people. The mound of corpses acts as a kind of pedestal from which Liberty strides, barefoot and bare-breasted, out of the canvas and into the space of the viewer. The Phrygian cap she wears had come to symbolize liberty during the first French Revolution, of 1789–94. The painting has been seen as a marker to the end of the Age of Enlightenment, as many scholars see the end of the French Revolution as the start of the romantic era.\nThe fighters are from a mixture of social classes, ranging from the bourgeoisie represented by the young man in a top hat, a student from the prestigious École Polytechnique wearing the traditional bicorne, to the revolutionary urban worker, as exemplified by the boy holding pistols. What they have in common is the fierceness and determination in their eyes. Aside from the flag held by Liberty, a second, minute tricolore can be discerned in the distance flying from the towers of Notre Dame.",
            "Eugène_Delacroix_-_La_liberté_guidant_le_peuple",
            "1830",
            "Sala 1")
        
        let artWork4: Artwork = Artwork (
            "St Francis receiving the stigmata",
            "Giotto",
            "",
            "Giotto_di_Bondone_002",
            "1300",
            "Sala 2")
        
        let artWork5: Artwork = Artwork (
            "The Annunciation",
            "Rogier van der Weyden",
            "",
            "Rogier_van_der_Weyden_-_Annunciation_Triptych",
            "1434-1446",
            "Sala 2")
        
        let artWork6: Artwork = Artwork (
            "The Pieta of Villeneuve les Avignon",
            "Enguerrand Quarton",
            "",
            "Enguerrand_Quarton,_La_Pietà_de_Villeneuve-lès-Avignon",
            "1455-1460",
            "Sala 2")
        
        let artWork7: Artwork = Artwork (
            "An Old Man and his Grandson",
            "Domenico Ghirlandaio",
            "",
            "Domenico_Ghirlandaio_-_Homem_Velho_e_seu_Neto",
            "1488-1490",
            "Sala 2")
        
        let artWork8: Artwork = Artwork (
            "The Money Changer and His Wife",
            "Quentin Matsys",
            "",
            "Quentin_Massys_001",
            "1514",
            "Sala 2")
        
        let artWork9: Artwork = Artwork (
            "Portrait of Baldassare Castiglione",
            "Raphael",
            "",
            "Baldassare_Castiglione,_by_Raffaello_Sanzio",
            "1514-1515",
            "Sala 2")
        
        let artWork10: Artwork = Artwork (
            "The Crucifixion",
            "Paolo Veronese",
            "",
            "Paolo_Veronese_010",
            "1580-1588",
            "Sala 2")
        
        let artWork11: Artwork = Artwork (
            "Charles I at the Hunt",
            "Anthony van Dyck",
            "",
            "Charles_I_of_England_-_Van_Dyck",
            "1635",
            "Sala 2")
        
        let artWork12: Artwork = Artwork (
            "The Lacemaker",
            "Johannes Vermeer",
            "",
            "Johannes_Vermeer_-_The_lacemaker",
            "1669–1670",
            "Sala 2")
        
        let artWork13: Artwork = Artwork (
            "Infanta María Margarita",
            "Diego Velázquez",
            "",
            "Diego_Velázquez_029",
            "1655",
            "Sala 2")
        
        let artWork14: Artwork = Artwork (
            "Et in Arcadia ego",
            "Nicolas Poussin",
            "",
            "Nicolas_Poussin_-_Et_in_Arcadia_ego",
            "1637-1638",
            "Sala 2")
        
        let artWork15: Artwork = Artwork (
            "Diana bathing",
            "French Rococo",
            "",
            "Boucher_Diane_sortant_du_bain_Louvre",
            "1742",
            "Sala 2")
        
        let artWork16: Artwork = Artwork (
            "The Bather",
            "Jean Auguste Dominique Ingres",
            "",
            "Jean-Auguste-Dominique_Ingres_-_La_Baigneuse_Valpinçon",
            "1808",
            "Sala 2")
        
        let artWork17: Artwork = Artwork (
            "Madonna of Chancellor Rolin",
            "Jan van Eyck",
            "",
            "Jan_van_Eyck_070",
            "1435",
            "Sala 3")
        
        let artWork18: Artwork = Artwork (
            "Le Tricheur à l'as de carreau",
            "Georges de La Tour",
            "",
            "La_Tour_Le_Tricheur_Louvre_RF1972-8",
            "1633-1639",
            "Sala 3")
        
        let artWork19: Artwork = Artwork (
            "The Raft of the Medusa",
            "Théodore Géricault",
            "",
            "Théodore_Géricault_-_Le_Radeau_de_la_Méduse",
            "1819",
            "Sala 3")
        
        let artWork20: Artwork = Artwork (
            "La Crucifixion",
            "Andrea Mantegna",
            "",
            "Mantegna,_Andrea_-_crucifixion_-_Louvre_from_Predella_San_Zeno_Altarpiece_Verona",
            "1457-1460",
            "Sala 3")
        
        let artWork21: Artwork = Artwork (
            "La Nativité",
            "Juan Correa de Vivar",
            "",
            "Musée_du_Louvre_-_Juan_Correa_de_Vivar_-_La_Nativité",
            "1530",
            "Sala 3")
        
        let artWork22: Artwork = Artwork (
            "A Burial At Ornans",
            "Gustave Courbet",
            "",
            "Burial_at_Ornans",
            "1849-1850",
            "Sala 3")
        
        let artWork23: Artwork = Artwork (
            "The Gleaners",
            "Jean-François Millet",
            "",
            "Jean-François_Millet_(II)_-_The_Gleaners",
            "1857",
            "Sala 3")
        
        let artWork24: Artwork = Artwork (
            "St Jerome in the Desert",
            "Joachim Patinier",
            "",
            "Joachim_Patinir_-_St_Jerome_in_the_Desert",
            "1515-1520",
            "Sala 3")
        
        let artWork25: Artwork = Artwork (
            "Twilight Landscape",
            "Adriaen Brouwer",
            "",
            "Adriaen_Brouwer_-_Twilight_Landscape",
            "1633-1637",
            "Sala 3")
        
        let artWork26: Artwork = Artwork (
            "Joseph the Carpenter",
            "Georges de La Tour",
            "",
            "La_Tour",
            "1638-1645",
            "Sala 3")
        
        let artWork27: Artwork = Artwork (
            "View of Salisbury",
            "John Constable",
            "",
            "John_Constable_-_View_of_Salisbury",
            "1820",
            "Sala 3")
        
        let artWork28: Artwork = Artwork (
            "La Pietà de Villeneuve-lès-Avignon",
            "Enguerrand Quarton",
            "",
            "Louvre_Pietà_de_Villeneuve-lès-Avignon",
            "1457",
            "Sala 3")
        
        let artWork29: Artwork = Artwork (
            "L'Atelier du peintre",
            "Gustave Courbet",
            "",
            "Courbet_LAtelier_du_peintre",
            "1855",
            "Sala 3")
        
        let artWork30: Artwork = Artwork (
            "Martyre de saint Sébastien",
            "Andrea Mantegna",
            "",
            "Andrea_Mantegna_088",
            "1480",
            "Sala 3")
        
        let artWork31: Artwork = Artwork (
            "Résurrection de Lazare",
            "Gérard de Saint-Jean",
            "",
            "Geertgen_lazarus_grt",
            "1475-1499",
            "Sala 3")
        
        let artWork32: Artwork = Artwork (
            "Braque Family Triptych",
            "Rogier van der Weyden",
            "",
            "Weyden_Braque_Family_Triptych",
            "1450-1452",
            "Sala 3")
        
        let artWork33: Artwork = Artwork (
            "La Mort de Sardanapale",
            "Eugène Delacroix",
            "",
            "Delacroix_-_La_Mort_de_Sardanapale_(1827)",
            "1827",
            "Sala 3")
        
        let artWork34: Artwork = Artwork (
            "Self-portrait",
            "Albrecht Dürer",
            "",
            "Albrecht_Dürer_-_Self-portrait_at_22",
            "1493",
            "Sala 3")
        
        let artWork35: Artwork = Artwork (
            "Bethsabée au bain",
            "Rembrandt",
            "",
            "Rembrandt_Harmensz._van_Rijn_016",
            "1654",
            "Sala 3")
        
        let artWork36: Artwork = Artwork (
            "The Bohémienne",
            "Frans Hals",
            "",
            "Frans_Hals_-_Zigeunermeisje",
            "1628",
            "Sala 3")
        
        let artWork37: Artwork = Artwork (
            "Le Pied-bot",
            "José de Ribera",
            "",
            "José_de_Ribera_017",
            "1654",
            "Sala 3")
        
        let artWork38: Artwork = Artwork (
            "Maria Theresa of Austria",
            "Diego Vélasquez",
            "",
            "Marie-Thérèse_d'Autriche_(1638-1683)_reine_de_France,_par_Velasquez",
            "1652-1653",
            "Sala 3")
        
        let artWork39: Artwork = Artwork (
            "Pierrot",
            "Watteau",
            "",
            "WatteauPierrot",
            "1717-1719",
            "Sala 3")
        
        let artWork40: Artwork = Artwork (
            "The Prayer before Meal",
            "Jean Siméon Chardin",
            "",
            "Jean_Siméon_Chardin_-_The_Prayer_before_Meal",
            "1740",
            "Sala 3")
        
        let artWork41: Artwork = Artwork (
            "Les Baigneuses",
            "Jean-Honoré Fragonard",
            "",
            "Las_bañistas,_por_Jean-Honoré_Fragonard",
            "1763-1765",
            "Sala 3")
        
        let artWork42: Artwork = Artwork (
            "Inspiration",
            "Jean-Honoré Fragonard",
            "",
            "Fragonard,_Inspiration",
            "1769",
            "Sala 3")
        
        artWorks.append(artWork1)
        artWorks.append(artWork2)
        artWorks.append(artWork3)
        artWorks.append(artWork4)
        artWorks.append(artWork5)
        artWorks.append(artWork6)
        artWorks.append(artWork7)
        artWorks.append(artWork8)
        artWorks.append(artWork9)
        artWorks.append(artWork10)
        artWorks.append(artWork11)
        artWorks.append(artWork12)
        artWorks.append(artWork13)
        artWorks.append(artWork14)
        artWorks.append(artWork15)
        artWorks.append(artWork16)
        artWorks.append(artWork17)
        artWorks.append(artWork18)
        artWorks.append(artWork19)
        artWorks.append(artWork20)
        artWorks.append(artWork21)
        artWorks.append(artWork22)
        artWorks.append(artWork23)
        artWorks.append(artWork24)
        artWorks.append(artWork25)
        artWorks.append(artWork26)
        artWorks.append(artWork27)
        artWorks.append(artWork28)
        artWorks.append(artWork29)
        artWorks.append(artWork30)
        artWorks.append(artWork31)
        artWorks.append(artWork32)
        artWorks.append(artWork33)
        artWorks.append(artWork34)
        artWorks.append(artWork35)
        artWorks.append(artWork36)
        artWorks.append(artWork37)
        artWorks.append(artWork38)
        artWorks.append(artWork39)
        artWorks.append(artWork40)
        artWorks.append(artWork41)
        artWorks.append(artWork42)
    }
}

