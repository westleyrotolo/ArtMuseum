//
//  InitialData3.swift
//  artmuseum
//
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//

import Foundation

//Metropolitan Museum of New York
//ABC
class InitialData3 {
    var artWorks: [Artwork] = [Artwork]()
    init() {
        //init(_ title: String, _ author: String, _ text: String, _ id: String, _ year: String, _ room: String)
        

        let artWork1: Artwork = Artwork (
            "The Musicians ",
            "Caravaggio",
            "The Musicians or Concert of Youths (c. 1595) is a painting by the Italian Baroque master Michelangelo Merisi da Caravaggio.\nThe picture shows four boys in quasi-Classical costume, three playing various musical instruments or singing, the fourth dressed as Cupid and reaching towards a bunch of grapes.\nCaravaggio seems to have composed the painting from studies of two figures. The central figure with the lute has been identified with Caravaggio's companion Mario Minniti, and the individual next to him and facing the viewer is possibly a self-portrait of the artist. The cupid bears a strong resemblance to the boy in Boy Peeling Fruit, done a few years before, and also to the angel in Saint Francis of Assisi in Ecstasy.\nThe manuscripts show that the boys are practicing madrigals celebrating love, and the eyes of the lutenist, the principal figure, are moist with tears—the songs presumably describe the sorrow of love rather than its pleasures. The violin in the foreground suggests a fifth participant, implicitly including the viewer in the tableau.\nScenes showing musicians were a popular theme at the time. This scene, however, is clearly secular rather than religious, and harks back to the long-established tradition of \"concert\" pictures, a genre originating in Venice and exemplified, in its earlier form, by Titian's Le concert champêtre.\nThis was Caravaggio's most ambitious and complex composition to date, and the artist has evidently had difficulties with painting the four figures separately—they don't relate to each other or to the picture-space, and the overall effect is somewhat clumsy.",
            "Caravaggio_-_I_Musici",
            "1595",
            "Sala 1")
        
        let artWork2: Artwork = Artwork (
            "View of Toledo",
            "El Greco",
            "View of Toledo (original title Vista de Toledo), is one of the two surviving landscapes painted by El Greco. The other, View and Plan of Toledo lies at Museo Del Greco, Toledo, Spain.\nView of Toledo is among the best known depictions of the sky in Western art, along with Vincent van Gogh's The Starry Night and the landscapes of William Turner and Monet, among others. Most notable is the distinct color contrast between the dark and somber skies above and the glowing green hills below. While influenced by the Mannerist style, El Greco's expressive handling of color and form is without parallel in the history of art. In this painting, he takes liberties with the actual layout of Toledo insofar as certain building locations are re-arranged. However, the location of the Castle of San Servando, on the right, is accurately depicted. El Greco's signature appears in the lower-right corner.",
            "El_Greco_View_of_Toledo",
            "1596-1600",
            "Sala 1")
        
        let artWork3: Artwork = Artwork (
            "Woman with a Lute",
            "Johannes Vermeer",
            "Woman with a Lute, also known as Woman with a Lute Near a Window, is a painting created about 1662–1663 by Dutch painter Johannes Vermeer and now at the Metropolitan Museum of Art in New York.\nThe painting depicts a young woman wearing an ermine-trimmed jacket and enormous pearl earrings as she eagerly looks out a window, presumably expecting a male visitor. The tuning of a lute was recognized by contemporary viewers as a symbol of the virtue of temperance.\nThe work likely was painted shortly after than Young Woman with a Water Pitcher, and it shares with that painting its framing of the figure within rectangular motifs. But the painting has more muted tones, reflecting a shift in that direction by Vermeer in the mid- to late 1660s. At this time, Vermeer began using shadows and soft contours to further evoke an atmosphere of intimacy. \"The impression of spatial recession and atmosphere is somewhat diminished by darkening with age of the objects in the foreground and by abrasion of the paint surface, mostly in the same area,\" according to the Metropolitan Museum of Art web page.",
            "Vermeer_-_Woman_with_a_Lute_near_a_window",
            "1662–1663 ",
            "Sala 2")
        
        let artWork4: Artwork = Artwork (
            "The Harvesters",
            "Pieter Bruegel the Elder",
            "",
            "Giotto_di_Bondone_002",
            "1565",
            "Sala 1")
        
        let artWork5: Artwork = Artwork (
            "Triptych with the Annunciation",
            "Robert Campin",
            "",
            "Robert_Campin_-_Triptych_with_the_Annunciation",
            "1425–1428",
            "Sala 1")
        
        let artWork6: Artwork = Artwork (
            "Crucifixion and Last Judgement diptych",
            "Jan van Eyck",
            "",
            "Jan_van_Eyck_-_Diptych",
            "1430-1440",
            "Sala 1")

        
        let artWork7: Artwork = Artwork (
            "Opening of the Fifth Seal",
            "El Greco",
            "",
            "El_Greco,_The_Vision_of_Saint_John_(1608-1614)",
            "1608–1614",
            "Sala 1")
        
        let artWork8: Artwork = Artwork (
            "The Fortune Teller",
            "Georges de La Tour",
            "",
            "Georges_de_La_Tour_016",
            "1630",
            "Sala 1")
        
        let artWork9: Artwork = Artwork (
            "Portrait of Juan de Pareja",
            "Diego Velázquez",
            "",
            "Retrato_de_Juan_Pareja,_by_Diego_Velázquez",
            "1650",
            "Sala 1")
        
        let artWork10: Artwork = Artwork (
            "Aristotle Contemplating the Bust of Homer",
            "Rembrandt",
            "",
            "Rembrandt_Harmensz._van_Rijn_013",
            "1653",
            "Sala 1")
        
        let artWork11: Artwork = Artwork (
            "Portrait of a Lady",
            "Paolo Uccello",
            "",
            "Uccello_Portrait_of_a_Lady_MET",
            "1450",
            "Sala 1")
        
        let artWork12: Artwork = Artwork (
            "The Death of Socrates",
            "Jacques-Louis David",
            "",
            "David_-_The_Death_of_Socrates",
            "1787",
            "Sala 2")
        
        let artWork13: Artwork = Artwork (
            "Young Woman Drawing",
            "Marie-Denise Villers",
            "",
            "Villers_Young_Woman_Drawing",
            "1801",
            "Sala 2")
        
        let artWork14: Artwork = Artwork (
            "Majas on a Balcony",
            "Francisco Goya",
            "",
            "Majas_on_Balcony,_Francisco_de_Goya",
            "1835",
            "Sala 2")
        
        let artWork15: Artwork = Artwork (
            "The Grand Canal",
            "Joseph Mallord William Turner",
            "",
            "Joseph_Mallord_William_Turner_-_The_Grand_Canal,_Venice",
            "1835",
            "Sala 2")
        
        let artWork16: Artwork = Artwork (
            "The Oxbow",
            "Thomas Cole",
            "",
            "Cole_Thomas_The_Oxbow_(The_Connecticut_River_near_Northampton_1836)",
            "1836",
            "Sala 2")
        
        let artWork17: Artwork = Artwork (
            "Fur Traders Descending the Missouri",
            "George Caleb Bingham",
            "",
            "George_Caleb_Bingham_001",
            "1845",
            "Sala 2")
        
        let artWork18: Artwork = Artwork (
            "Christ Asleep during the Tempesta",
            "Eugène Delacroix",
            "",
            "Eugène_Delacroix_-_Christ_Endormi_pendant_la_Tempête",
            "1853",
            "Sala 2")
        
        let artWork19: Artwork = Artwork (
            "The Horse Fair",
            "Rosa Bonheur",
            "",
            "Rosa_bonheur_horse_fair_1835_55",
            "1852-1855",
            "Sala 2")
        
        let artWork20: Artwork = Artwork (
            "The Dead Christ with Angels",
            "Édouard Manet",
            "",
            "Édouard_Manet_-_Le_Christ_mort_et_les_anges",
            "1864",
            "Sala 2")

        let artWork21: Artwork = Artwork (
            "The Dancing Class",
            "Edgar Degas",
            "",
            "Edgar_Degas_-_Chasse_de_danse",
            "1872",
            "Sala 3")

        let artWork22: Artwork = Artwork (
            "Boating",
            "Edouard Manet",
            "",
            "Edouard_Manet_Boating",
            "1874",
            "Sala 3")

        let artWork23: Artwork = Artwork (
            "Mme. Charpentier and Her Children",
            "Renoir",
            "",
            "Renoir_-_Madame_Georges_Charpentier_et_ses_enfants",
            "1878",
            "Sala 3")

        let artWork24: Artwork = Artwork (
            "Jeanne d'Arc",
            "Jules Bastien-Lepage",
            "",
            "JoanOfArcLarge.jpeg",
            "1879",
            "Sala 3")

        let artWork25: Artwork = Artwork (
            "Portrait of Madame X",
            "John Singer Sargent",
            "",
            "Sargent_MadameX.jpeg",
            "1884",
            "Sala 3")

        let artWork26: Artwork = Artwork (
            "Self-Portrait with Straw Ha",
            "Vincent Van Gogh",
            "",
            "Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan",
            "1887-1888",
            "Sala 3")

        let artWork27: Artwork = Artwork (
            "Cypresses",
            "Vincent Van Gogh",
            "",
            "Vincent_van_Gogh_Zypressen_anagoria",
            "1889",
            "Sala 3")

        let artWork28: Artwork = Artwork (
            "Madame Cézanne",
            "Paul Cézanne",
            "",
            "Paul_Cézanne,_1888-90,_Madame_Cézanne_(Hortense_Fiquet,_1850–1922)_in_a_Red_Dress",
            "1888-1890",
            "Sala 3")

        let artWork29: Artwork = Artwork (
            "The Card Players",
            "Paul Cézanne",
            "",
            "Paul_Cézanne_082",
            "1890-1892",
            "Sala 3")

        let artWork30: Artwork = Artwork (
            "The Four Trees",
            "Claude Monet",
            "",
            "Monet_The_four_trees_anagoria",
            "1891",
            "Sala 3")

        let artWork31: Artwork = Artwork (
            "The Midday Nap",
            "Paul Gauguin",
            "",
            "Paul_Gauguin_044",
            "1892-1894",
            "Sala 4")

        let artWork32: Artwork = Artwork (
            "The Gulf Stream",
            "Winslow Homer",
            "",
            "Winslow_Homer_-_The_Gulf_Stream_-_Metropolitan_Museum_of_Art",
            "1899",
            "Sala 4")

        let artWork33: Artwork = Artwork (
            "The Houses of Parliament (Effect of Fog)",
            "Claude Monet",
            "",
            "The_Houses_of_Parliament_(Effect_of_Fog)",
            "1903-1904",
            "Sala 4")

        let artWork34: Artwork = Artwork (
            "L'Acteur (The Actor)",
            "Pablo Picasso",
            "",
            "Picasso_The_Actor_1904",
            "1904-1905",
            "Sala 4")

        let artWork35: Artwork = Artwork (
            "Portrait of Gertrude Stein",
            "Pablo Picasso",
            "",
            "GertrudeStein",
            "1905-1906",
            "Sala 4")

        let artWork36: Artwork = Artwork (
            "The Young Sailor II",
            "Henri Matisse",
            "",
            "Young_Sailor_II",
            "1906",
            "Sala 4")
        
        let artWork37: Artwork = Artwork (
            "The Repast of the Lion",
            "Henri Rousseau",
            "",
            "Rousseau_theRepastOfTheLion",
            "1907",
            "Sala 4")
        
        let artWork38: Artwork = Artwork (
            "Still Life with Mandola and Metronome",
            "Georges Braque",
            "",
            "Georges_Braque,_1909,_Still_Life_with_Metronome",
            "1909",
            "Sala 4")
        
        let artWork39: Artwork = Artwork (
            "The Oil Mill (Moulin à huile)",
            "Pablo Picasso",
            "",
            "Pablo_Picasso,_1909,_The_Oil_Mill_(Moulin_à_huile)",
            "1909",
            "Sala 4")
        
        let artWork40: Artwork = Artwork (
            "Still Life with a Bottle of Rum",
            "Pablo Picasso",
            "",
            "Pablo_Picasso,_1911,_Still_Life_with_a_Bottle_of_Rum",
            "1911",
            "Sala 4")
        
        
        let artWork41: Artwork = Artwork (
            "Improvisation 27, Garden of Love II",
            "Wassily Kandinsky",
            "",
            "Vassily_Kandinsky,_1912_-_Improvisation_27,_Garden_of_Love_II",
            "1913",
            "Sala 5")
        
        let artWork42: Artwork = Artwork (
            "Cow",
            "Arthur Dove",
            "",
            "Arthur_Dove,_Cow,_1914",
            "1914",
            "Sala 5")
        
        let artWork43: Artwork = Artwork (
            "Jeanne Hébuterne",
            "Amedeo Modigliani",
            "",
            "Amedeo_Modigliani,_1919,_Jeanne_Hébuterne",
            "1919",
            "Sala 5")
        
        let artWork44: Artwork = Artwork (
            " Saw the Figure 5 in Gold",
            "Charles Demuth",
            "",
            "NY_Met_demuth_figure_5_gold",
            "1928",
            "Sala 5")
            

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
        artWorks.append(artWork43)
        artWorks.append(artWork44)
    }
}


